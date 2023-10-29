import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:love_dogs/feature/breeds/model/breed_list_item.dart';
import 'package:love_dogs/feature/breeds/repo/breeds_repo.dart';

part 'breeds_cubit.freezed.dart';
part 'breeds_state.dart';

@injectable
class BreedsCubit extends Cubit<BreedsState> {
  BreedsCubit({
    required this.repo,
  }) : super(const BreedsState.loading());

  final BreedsRepo repo;

  Future<void> fetch() async {
    final breeds = await repo.getDogBreeds();

    try {
      emit(
        BreedsState.data(
          breeds,
        ),
      );
    } catch (e) {
      emit(const BreedsState.error());
    }
  }
}