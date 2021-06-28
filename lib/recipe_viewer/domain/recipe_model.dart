import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';

@freezed
class Recipe with _$Recipe {
  const Recipe._();
  const factory Recipe({
    required String name,
    required String description,
    required String createdBy,
    required List<String> ingredients,
    required DateTime addedOn,
  }) = _Recipe;
}
