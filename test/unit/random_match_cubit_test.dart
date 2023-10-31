import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:love_dogs/core/repo/dog_repo.dart';
import 'package:love_dogs/features/random_match/cubit/random_match_cubit.dart';
import 'package:love_dogs/features/random_match/model/random_match_dog.dart';
import 'package:mocktail/mocktail.dart';

class MockDogRepo extends Mock implements DogRepo {}

void main() {
  group('RandomMatchCubit Cubit', () {
    late RandomMatchCubit cubit;
    late DogRepo mockDogRepo;

    setUp(() {
      mockDogRepo = MockDogRepo();

      cubit = RandomMatchCubit(
        repo: mockDogRepo,
      );
    });

    test('initial state is correct', () {
      expect(
        cubit.state,
        equals(const RandomMatchState.loading()),
      );
    });

    blocTest<RandomMatchCubit, RandomMatchState>(
      'emits [RandomMatchState.data()] when fetch method is called with no filter',
      setUp: () {
        when(
          () => mockDogRepo.getRandomDog(),
        ).thenAnswer((_) => Future.value(mockedRandomDog));
      },
      build: () => cubit,
      act: (cubit) => cubit.fetch(null),
      expect: () => [
        const RandomMatchState.data(
          mockedRandomDog,
          null,
        ),
      ],
    );

    blocTest<RandomMatchCubit, RandomMatchState>(
      'emits [RandomMatchState.data()] when fetch method is called with some filter',
      setUp: () {
        when(
          () =>
              mockDogRepo.getRandomDog(filterBreed: any(named: 'filterBreed')),
        ).thenAnswer((_) => Future.value(mockedRandomDogFilter));
      },
      build: () => cubit,
      act: (cubit) => cubit.fetch('breed1'),
      expect: () => [
        const RandomMatchState.data(
          mockedRandomDogFilter,
          'breed1',
        ),
      ],
    );

    blocTest<RandomMatchCubit, RandomMatchState>(
      'emits [RandomMatchState.loading(), RandomMatchState.data()] when like method is called',
      setUp: () {
        when(
          () => mockDogRepo.favoriteDogs.add(any()),
        ).thenAnswer(
          (_) => [
            mockedRandomDogFilter,
          ],
        );
        when(
          () =>
              mockDogRepo.getRandomDog(filterBreed: any(named: 'filterBreed')),
        ).thenAnswer((_) => Future.value(mockedRandomDogFilter));
      },
      build: () => cubit,
      seed: () => const RandomMatchState.data(
        mockedRandomDogFilter,
        'breed1',
      ),
      act: (cubit) => cubit.like(),
      expect: () => [
        const RandomMatchState.loading(),
        const RandomMatchState.data(
          mockedRandomDogFilter,
          'breed1',
        ),
      ],
    );

    blocTest<RandomMatchCubit, RandomMatchState>(
      'emits [RandomMatchState.loading(), RandomMatchState.data()] when dislike method is called',
      setUp: () {
        when(
          () =>
              mockDogRepo.getRandomDog(filterBreed: any(named: 'filterBreed')),
        ).thenAnswer((_) => Future.value(mockedRandomDogFilter));
      },
      build: () => cubit,
      seed: () => const RandomMatchState.data(
        mockedRandomDogFilter,
        'breed1',
      ),
      act: (cubit) => cubit.dislike(),
      expect: () => [
        const RandomMatchState.loading(),
        const RandomMatchState.data(
          mockedRandomDogFilter,
          'breed1',
        ),
      ],
    );

    blocTest<RandomMatchCubit, RandomMatchState>(
      'emits [RandomMatchState.loading(), RandomMatchState.data()] when clearFilter method is called',
      setUp: () {
        when(
          () => mockDogRepo.getRandomDog(),
        ).thenAnswer((_) => Future.value(mockedRandomDog));
      },
      build: () => cubit,
      seed: () => const RandomMatchState.data(
        mockedRandomDogFilter,
        'breed1',
      ),
      act: (cubit) => cubit.clearFilter(),
      expect: () => [
        const RandomMatchState.loading(),
        const RandomMatchState.data(
          mockedRandomDog,
          null,
        ),
      ],
    );
  });
}

const mockedRandomDog = RandomMatchDog(
  breed: 'breed',
  distance: 12,
  imageUrl: 'imageUrl',
  name: 'name',
  potentialMatch: true,
);

const mockedRandomDogFilter = RandomMatchDog(
  breed: 'breed1',
  distance: 12,
  imageUrl: 'imageUrl',
  name: 'name1',
  potentialMatch: false,
);
