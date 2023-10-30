import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_dogs/core/di/injections.dart';
import 'package:love_dogs/features/favorites/cubit/favorite_cubit.dart';
import 'package:love_dogs/features/favorites/view/pages/favorite_page.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getDependency<FavoriteCubit>()..fetch(),
      child: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) => state.map(
          loading: (state) => const Center(child: CircularProgressIndicator()),
          data: (state) => FavoritePage(
            favoriteDogs: state.favoriteDogs,
          ),
          error: (value) => const Center(child: Text('Error')),
          empty: (value) => const Center(child: Text('No favorites yet')),
        ),
      ),
    );
  }
}
