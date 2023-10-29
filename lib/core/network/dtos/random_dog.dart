import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_dog.freezed.dart';
part 'random_dog.g.dart';

@freezed
class RandomDogDto with _$RandomDogDto {
  const factory RandomDogDto({
    required String message,
    required String status,
  }) = _RandomDogDto;

  factory RandomDogDto.fromJson(Map<String, dynamic> json) =>
      _$RandomDogDtoFromJson(json);
}
