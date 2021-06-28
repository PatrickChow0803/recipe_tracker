import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_tracker/recipe_viewer/domain/recipe_model.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required List<Recipe> userCreatedRecipes,
    required List<Recipe> favoriteRecipes,
  }) = _User;
}
