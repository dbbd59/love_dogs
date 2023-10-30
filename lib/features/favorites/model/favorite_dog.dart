import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:love_dogs/core/utils/mapper.dart';
import 'package:love_dogs/features/random_match/model/random_match_dog.dart';

part 'favorite_dog.freezed.dart';

@freezed
class FavoriteDog with _$FavoriteDog {
  const factory FavoriteDog({
    required String name,
    required String imageUrl,
  }) = _FavoriteDog;
}

class FavoriteDogMapper extends Mapper<RandomMatchDog, FavoriteDog> {
  @override
  FavoriteDog convert(RandomMatchDog randomMatchDog) {
    try {
      return FavoriteDog(
        name: randomMatchDog.name,
        imageUrl: randomMatchDog.imageUrl,
      );
    } catch (e, s) {
      throw MapperException('Error mapping dto', e, s);
    }
  }
}
