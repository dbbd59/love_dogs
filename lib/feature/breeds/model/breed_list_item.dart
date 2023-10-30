import 'package:freezed_annotation/freezed_annotation.dart';

part 'breed_list_item.freezed.dart';

@freezed
class BreedListItem with _$BreedListItem {
  const factory BreedListItem({
    required String breedName,
    required List<String> imagesUrl,
    @Default(false) bool isSubBreed,
  }) = _BreedListItem;
}
