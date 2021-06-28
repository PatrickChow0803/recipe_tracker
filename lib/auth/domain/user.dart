import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_tracker/recipe_viewer/domain/recipe_model.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required final List<Recipe> userCreatedRecipes,
    required final List<Recipe> favoriteRecipes,
  }) = _User;
}
