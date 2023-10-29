import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:love_dogs/feature/random_match/model/random_match_dog.dart';
import 'package:love_dogs/feature/random_match/repo/random_match_repo.dart';

part 'random_match_cubit.freezed.dart';
part 'random_match_state.dart';

@injectable
class RandomMatchCubit extends Cubit<RandomMatchState> {
  RandomMatchCubit({
    required this.repo,
  }) : super(const RandomMatchState.loading());

  final RandomMatchRepo repo;

  Future<void> fetch(String? filterBreed) async {
    final dog = await repo.getRandomDog(filterBreed);

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

    emit(const RandomMatchState.loading());

    final dog = await repo.getRandomDog(currentState.filter);

    try {
      emit(
        currentState.copyWith(dog: dog),
      );
    } catch (e) {
      emit(const RandomMatchState.error());
    }
  }

  Future<void> dislike() async {
    final currentState = state as _Data;

    emit(const RandomMatchState.loading());
    final dog = await repo.getRandomDog(currentState.filter);

    try {
      emit(
        currentState.copyWith(dog: dog),
      );
    } catch (e) {
      emit(const RandomMatchState.error());
    }
  }
}
