import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:love_dogs/core/network/api.dart';
import 'package:love_dogs/core/network/dtos/random_dog.dart';
import 'package:love_dogs/feature/random_match/model/random_match_dog.dart';

@injectable
class RandomMatchRepo {
  Future<RandomMatchDog> getRandomDog() async {
    final url = Uri.parse(RANDOM_DOG);
    final response = await http.get(
      url,
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get random dog');
    }

    final dto = RandomDogDto.fromJson(jsonDecode(response.body));

    return RandomMatchDogMapper().convert(dto);
  }
}