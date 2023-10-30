import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_dogs/core/di/injections.dart';
import 'package:love_dogs/features/breeds/cubit/breeds_cubit.dart';
import 'package:love_dogs/features/breeds/view/pages/breeds_page.dart';

class BreedsView extends StatelessWidget {
  const BreedsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getDependency<BreedsCubit>()..fetch(),
      child: BlocBuilder<BreedsCubit, BreedsState>(
        builder: (context, state) => state.map(
          loading: (state) => const Center(child: CircularProgressIndicator()),
          data: (state) => BreedListPage(
            breedsItem: state.breedsItem,
          ),
          error: (value) => const Center(child: Text('Error')),
        ),
      ),
    );
  }
}
