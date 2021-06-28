// Facade is a design pattern for connecting two or more classes with
// weird interfaces into just one simplified interface. In our case, it will connect
// FirebaseAuth and GoogleSignIn.
// This file is inside the domain folder because remember that domain is completely independent of other layers,
// therefore this interface file should be here. This interface MUST be fulfilled, whether it's from Firebase or RestApi
// This interface allows us to implement the application logic without any FirebaseAuth dependencies!!!
import 'package:dartz/dartz.dart';
import 'package:recipe_tracker/auth/domain/user.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  MyUser getSignedInUser();

  // Use Unit here instead of void when working with the Either type.
  // This is because Unit is an actual class whereas void is just a keyword !!!
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
