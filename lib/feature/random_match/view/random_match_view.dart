import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_dogs/core/di/injections.dart';
import 'package:love_dogs/feature/random_match/cubit/random_match_cubit.dart';
import 'package:love_dogs/feature/random_match/view/pages/random_match_page.dart';

class RandomMatchView extends StatelessWidget {
  const RandomMatchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getDependency<RandomMatchCubit>()..fetch(),
      child: BlocBuilder<RandomMatchCubit, RandomMatchState>(
        builder: (context, state) => state.map(
          loading: (state) => const Center(child: CircularProgressIndicator()),
          data: (state) => RandomMatchPage(
            dog: state.dog,
          ),
          error: (value) => const Center(child: Text('Error')),
        ),
      ),
    );
  }
}
