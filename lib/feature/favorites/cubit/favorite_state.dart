part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.loading() = _Loading;
  const factory FavoriteState.data(
    List<FavoriteDog> favoriteDogs,
  ) = _Data;
  const factory FavoriteState.error() = _Error;
  const factory FavoriteState.empty(
    List<FavoriteDog> favoriteDogs,
  ) = _Empty;
}
