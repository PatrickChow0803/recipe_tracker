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
class _$MyUserTearOff {
  const _$MyUserTearOff();

  _MyUser call({required String userId}) {
    return _MyUser(
      userId: userId,
    );
  }
}

/// @nodoc
const $MyUser = _$MyUserTearOff();

/// @nodoc
mixin _$MyUser {
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyUserCopyWith<MyUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyUserCopyWith<$Res> {
  factory $MyUserCopyWith(MyUser value, $Res Function(MyUser) then) =
      _$MyUserCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$MyUserCopyWithImpl<$Res> implements $MyUserCopyWith<$Res> {
  _$MyUserCopyWithImpl(this._value, this._then);

  final MyUser _value;
  // ignore: unused_field
  final $Res Function(MyUser) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MyUserCopyWith<$Res> implements $MyUserCopyWith<$Res> {
  factory _$MyUserCopyWith(_MyUser value, $Res Function(_MyUser) then) =
      __$MyUserCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

/// @nodoc
class __$MyUserCopyWithImpl<$Res> extends _$MyUserCopyWithImpl<$Res>
    implements _$MyUserCopyWith<$Res> {
  __$MyUserCopyWithImpl(_MyUser _value, $Res Function(_MyUser) _then)
      : super(_value, (v) => _then(v as _MyUser));

  @override
  _MyUser get _value => super._value as _MyUser;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_MyUser(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MyUser extends _MyUser {
  const _$_MyUser({required this.userId}) : super._();

  @override
  final String userId;

  @override
  String toString() {
    return 'MyUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyUser &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$MyUserCopyWith<_MyUser> get copyWith =>
      __$MyUserCopyWithImpl<_MyUser>(this, _$identity);
}

abstract class _MyUser extends MyUser {
  const factory _MyUser({required String userId}) = _$_MyUser;
  const _MyUser._() : super._();

  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyUserCopyWith<_MyUser> get copyWith => throw _privateConstructorUsedError;
}
