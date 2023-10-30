import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_dogs/core/di/injections.dart';
import 'package:love_dogs/features/random_match/cubit/random_match_cubit.dart';
import 'package:love_dogs/features/random_match/view/pages/random_match_page.dart';

class RandomMatchView extends StatelessWidget {
  const RandomMatchView({
    required this.filterBreed,
    super.key,
  });

  final String? filterBreed;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getDependency<RandomMatchCubit>()..fetch(filterBreed),
      child: BlocBuilder<RandomMatchCubit, RandomMatchState>(
        builder: (context, state) => state.map(
          loading: (state) => const Center(child: CircularProgressIndicator()),
          data: (state) => RandomMatchPage(
            dog: state.dog,
            filter: state.filter,
          ),
          error: (value) => const Center(child: Text('Error')),
        ),
      ),
    );
  }
}
