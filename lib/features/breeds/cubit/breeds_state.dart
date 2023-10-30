part of 'breeds_cubit.dart';

@freezed
class BreedsState with _$BreedsState {
  const factory BreedsState.loading() = _Loading;
  const factory BreedsState.data(
    List<BreedListItem> breedsItem,
  ) = _Data;
  const factory BreedsState.error() = _Error;
}
