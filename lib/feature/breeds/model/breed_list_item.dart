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

/* class RandomMatchDogMapper extends Mapper<BreedDto, BreedListItem> {
  @override
  BreedListItem convert(BreedDto dto) {
    try {
      return RandomMatchDog(
        name: getRandomDogName(),
        imageUrl: dto.message,
        distance: getRandomDistance(),
        breed: extractBreedFromUrl(dto.message),
        potentialMatch: generateRandomBool(),
      );
    } catch (e, s) {
      throw MapperException('Error mapping menu', e, s);
    }
  }
}
 */