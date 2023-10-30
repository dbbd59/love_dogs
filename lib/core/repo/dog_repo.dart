import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:love_dogs/features/breeds/model/breed_list_item.dart';
import 'package:love_dogs/features/favorites/model/favorite_dog.dart';
import 'package:love_dogs/features/random_match/model/random_match_dog.dart';
import 'package:love_dogs/services/network/api.dart';
import 'package:love_dogs/services/network/dtos/breed_dto.dart';
import 'package:love_dogs/services/network/dtos/random_dog.dart';

@singleton
class DogRepo {
  final favoriteDogs = <RandomMatchDog>[];

  Future<RandomMatchDog> getRandomDog({
    String? filterBreed,
  }) async {
    final url = filterBreed == null
        ? Uri.parse(RANDOM_DOG)
        : Uri.parse(RANDOM_DOG_BY_BREED.replaceAll(':BREED', filterBreed));
    final response = await http.get(
      url,
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get random dog');
    }

    final dto = RandomDogDto.fromJson(jsonDecode(response.body));

    return RandomMatchDogMapper().convert(dto);
  }

  List<FavoriteDog> getFavoriteDogs() {
    return favoriteDogs.map((e) => FavoriteDogMapper().convert(e)).toList();
  }

  Future<List<BreedListItem>> getDogBreeds() async {
    final allBreeds = await fetchAllBreeds();
    final res = await fetchBreedImages(allBreeds);
    return res;
  }

  Future<List<BreedDto>> fetchAllBreeds() async {
    try {
      final response = await http.get(Uri.parse(LIST_ALL_BREEDS));
      final dto = jsonDecode(response.body)['message'] as Map<String, dynamic>;

      final allBreeds = <BreedDto>[];
      dto.forEach((k, v) {
        allBreeds.add(BreedDto(k));
        if (v != null) {
          v.forEach(
            (e) => allBreeds.add(BreedDto(e, isSubBreed: true, breedParent: k)),
          );
        }
      });

      return allBreeds;
    } catch (e) {
      return [];
    }
  }

  Future<List<BreedListItem>> fetchBreedImages(List<BreedDto> allBreeds) async {
    final res = <BreedListItem>[];
    for (var breed in allBreeds) {
      final isSubBreed = breed.isSubBreed ?? false;
      final breedName = breed.name;
      final parentBreed = breed.breedParent;

      final breedImagesUrl =
          await fetchImagesUrl(isSubBreed, breedName, parentBreed);

      res.add(
        BreedListItem(
          breedName: breedName,
          isSubBreed: isSubBreed,
          imagesUrl: breedImagesUrl,
        ),
      );
    }
    return res;
  }

  Future<List<String>> fetchImagesUrl(
    bool isSubBreed,
    String breedName,
    String? parentBreed,
  ) async {
    final url = isSubBreed
        ? Uri.parse(
            IMAGE_FROM_SUBBREED
                .replaceAll(':BREED', parentBreed!)
                .replaceAll(':SUBBREED', breedName),
          )
        : Uri.parse(IMAGE_FROM_BREED.replaceAll(':BREED', breedName));

    try {
      final imgesResponse = await http.get(url);
      final images = jsonDecode(imgesResponse.body);
      final List<dynamic> imageList = images['message'];

      return imageList.map((e) => e.toString()).toList();
    } catch (e) {
      return [];
    }
  }
}
