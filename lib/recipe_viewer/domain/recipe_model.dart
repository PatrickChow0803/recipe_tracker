import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';

@freezed
class Recipe with _$Recipe {
  const Recipe._();
  const factory Recipe({
    required final String name,
    required final String description,
    required final String createdBy,
    required final List<String> ingredients,
    required final DateTime addedOn,
  }) = _Recipe;
}
