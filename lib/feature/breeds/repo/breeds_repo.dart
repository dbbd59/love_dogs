import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:love_dogs/core/network/api.dart';
import 'package:love_dogs/core/network/dtos/breed_dto.dart';
import 'package:love_dogs/feature/breeds/model/breed_list_item.dart';

@injectable
class BreedsRepo {
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
