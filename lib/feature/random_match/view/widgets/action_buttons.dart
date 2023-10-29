import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_dogs/feature/random_match/cubit/random_match_cubit.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            iconSize: 50,
            onPressed: () {
              context.read<RandomMatchCubit>().dislike();
            },
            color: Theme.of(context).colorScheme.error,
            icon: const Icon(Icons.cancel_outlined),
          ),
          IconButton(
            iconSize: 50,
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              context.read<RandomMatchCubit>().like();
            },
            icon: const Icon(Icons.favorite_outline_sharp),
          ),
        ],
      ),
    );
  }
}
