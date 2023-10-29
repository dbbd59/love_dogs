part of 'random_match_cubit.dart';

@freezed
class RandomMatchState with _$RandomMatchState {
  const factory RandomMatchState.loading() = _Loading;
  const factory RandomMatchState.data(
    RandomMatchDog dog,
    String? filter,
  ) = _Data;
  const factory RandomMatchState.error() = _Error;
}
