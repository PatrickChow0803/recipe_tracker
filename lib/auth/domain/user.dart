import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_tracker/recipe_viewer/domain/recipe_model.dart';

part 'user.freezed.dart';

@freezed
class MyUser with _$MyUser {
  const MyUser._();
  const factory MyUser({
    required final String userId,
  }) = _MyUser;
}
