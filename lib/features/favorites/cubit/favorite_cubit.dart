import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:love_dogs/core/repo/dog_repo.dart';
import 'package:love_dogs/features/favorites/model/favorite_dog.dart';

part 'favorite_cubit.freezed.dart';
part 'favorite_state.dart';

@injectable
class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit({
    required this.repo,
  }) : super(const FavoriteState.loading());

  final DogRepo repo;

  Future<void> fetch() async {
    try {
      final favorites = repo.getFavoriteDogs();
      if (favorites.isNotEmpty) {
        emit(
          FavoriteState.data(
            favorites,
          ),
        );
      } else {
        emit(const FavoriteState.empty([]));
      }
    } catch (e) {
      emit(const FavoriteState.error());
    }
  }

  Future<void> delete(String imageUrl) async {
    try {
      repo.favoriteDogs.removeWhere((element) => element.imageUrl == imageUrl);
      await fetch();
    } catch (e) {
      emit(const FavoriteState.error());
    }
  }
}
