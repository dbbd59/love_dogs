import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:love_dogs/core/network/dtos/random_dog.dart';
import 'package:love_dogs/core/utils/mapper.dart';
import 'package:love_dogs/core/utils/random_strings.dart';

part 'random_match_dog.freezed.dart';

@freezed
class RandomMatchDog with _$RandomMatchDog {
  const factory RandomMatchDog({
    required String name,
    required String imageUrl,
    required String breed,
    required double distance,
    required bool potentialMatch,
  }) = _RandomMatchDog;
}

class RandomMatchDogMapper extends Mapper<RandomDogDto, RandomMatchDog> {
  @override
  RandomMatchDog convert(RandomDogDto dto) {
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
