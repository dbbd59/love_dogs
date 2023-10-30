import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_dogs/feature/random_match/cubit/random_match_cubit.dart';
import 'package:love_dogs/feature/random_match/model/random_match_dog.dart';
import 'package:love_dogs/feature/random_match/view/widgets/action_buttons.dart';
import 'package:love_dogs/feature/random_match/view/widgets/image_widget.dart';

class RandomMatchPage extends StatelessWidget {
  const RandomMatchPage({
    required this.dog,
    required this.filter,
    super.key,
  });

  final RandomMatchDog dog;
  final String? filter;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            SizedBox(
              height: 50,
              child: filter != null
                  ? Chip(
                      label: Text(filter!),
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryContainer,
                      onDeleted: () {
                        context.read<RandomMatchCubit>().clearFilter();
                      },
                    )
                  : null,
            ),
            ImageWidget(
              imageUrl: dog.imageUrl,
              name: dog.name,
              distance: dog.distance,
              breed: dog.breed,
              potentialMatch: dog.potentialMatch,
            ),
          ],
        ),
        const ActionButtons(),
      ],
    );
  }
}
