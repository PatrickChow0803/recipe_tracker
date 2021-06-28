// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required List<Recipe> userCreatedRecipes,
      required List<Recipe> favoriteRecipes}) {
    return _User(
      userCreatedRecipes: userCreatedRecipes,
      favoriteRecipes: favoriteRecipes,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  List<Recipe> get userCreatedRecipes => throw _privateConstructorUsedError;
  List<Recipe> get favoriteRecipes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({List<Recipe> userCreatedRecipes, List<Recipe> favoriteRecipes});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? userCreatedRecipes = freezed,
    Object? favoriteRecipes = freezed,
  }) {
    return _then(_value.copyWith(
      userCreatedRecipes: userCreatedRecipes == freezed
          ? _value.userCreatedRecipes
          : userCreatedRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      favoriteRecipes: favoriteRecipes == freezed
          ? _value.favoriteRecipes
          : favoriteRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({List<Recipe> userCreatedRecipes, List<Recipe> favoriteRecipes});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? userCreatedRecipes = freezed,
    Object? favoriteRecipes = freezed,
  }) {
    return _then(_User(
      userCreatedRecipes: userCreatedRecipes == freezed
          ? _value.userCreatedRecipes
          : userCreatedRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      favoriteRecipes: favoriteRecipes == freezed
          ? _value.favoriteRecipes
          : favoriteRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_User extends _User {
  const _$_User(
      {required this.userCreatedRecipes, required this.favoriteRecipes})
      : super._();

  @override
  final List<Recipe> userCreatedRecipes;
  @override
  final List<Recipe> favoriteRecipes;

  @override
  String toString() {
    return 'User(userCreatedRecipes: $userCreatedRecipes, favoriteRecipes: $favoriteRecipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.userCreatedRecipes, userCreatedRecipes) ||
                const DeepCollectionEquality()
                    .equals(other.userCreatedRecipes, userCreatedRecipes)) &&
            (identical(other.favoriteRecipes, favoriteRecipes) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteRecipes, favoriteRecipes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCreatedRecipes) ^
      const DeepCollectionEquality().hash(favoriteRecipes);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const factory _User(
      {required List<Recipe> userCreatedRecipes,
      required List<Recipe> favoriteRecipes}) = _$_User;
  const _User._() : super._();

  @override
  List<Recipe> get userCreatedRecipes => throw _privateConstructorUsedError;
  @override
  List<Recipe> get favoriteRecipes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
