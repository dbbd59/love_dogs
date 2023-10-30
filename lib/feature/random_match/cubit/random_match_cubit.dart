import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:love_dogs/core/repo/dog_repo.dart';
import 'package:love_dogs/feature/random_match/model/random_match_dog.dart';

part 'random_match_cubit.freezed.dart';
part 'random_match_state.dart';

@injectable
class RandomMatchCubit extends Cubit<RandomMatchState> {
  RandomMatchCubit({
    required this.repo,
  }) : super(const RandomMatchState.loading());

  final DogRepo repo;

  Future<void> fetch(String? filterBreed) async {
    final dog = await repo.getRandomDog(filterBreed: filterBreed);

    try {
      emit(
        RandomMatchState.data(
          dog,
          filterBreed,
        ),
      );
    } catch (e) {
      emit(const RandomMatchState.error());
    }
  }

  Future<void> like() async {
    final currentState = state as _Data;
    repo.favoriteDogs.add(currentState.dog);

    emit(const RandomMatchState.loading());

    final newRandomDog =
        await repo.getRandomDog(filterBreed: currentState.filter);

    try {
      emit(
        currentState.copyWith(dog: newRandomDog),
      );
    } catch (e) {
      emit(const RandomMatchState.error());
    }
  }

  Future<void> dislike() async {
    final currentState = state as _Data;

    emit(const RandomMatchState.loading());
    final newRandomDog =
        await repo.getRandomDog(filterBreed: currentState.filter);

    try {
      emit(
        currentState.copyWith(dog: newRandomDog),
      );
    } catch (e) {
      emit(const RandomMatchState.error());
    }
  }

  Future<void> clearFilter() async {
    emit(const RandomMatchState.loading());
    final dog = await repo.getRandomDog();

    try {
      emit(
        RandomMatchState.data(
          dog,
          null,
        ),
      );
    } catch (e) {
      emit(const RandomMatchState.error());
    }
  }
}
