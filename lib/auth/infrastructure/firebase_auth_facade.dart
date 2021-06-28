import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:recipe_tracker/auth/domain/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_tracker/auth/domain/i_auth_facade.dart';
import 'package:recipe_tracker/auth/domain/user.dart';

class FirebaseAuthFacade with ChangeNotifier implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  bool isLoading = false;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  // converts the Firebase user to MyUser for Abstraction
  @override
  MyUser _userFromFirebase(User user) {
    return MyUser(
      userId: user.uid,
    );
  }

  @override
  MyUser getSignedInUser() {
    return _userFromFirebase(_firebaseAuth.currentUser!);
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required String emailAddress, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      // look at quick documentations on .createUserWithEmailAndPassword to see the different error codes
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required String emailAddress, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      // look at quick documentations on .signInWithEmailAndPassword to see the different error codes
      if (e.code == 'user-not-found' ||
          e.code == 'wrong-password' ||
          e.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      // .signIn returns a null if the sign in process was aborted
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
}
