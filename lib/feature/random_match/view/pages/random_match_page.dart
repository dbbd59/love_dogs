import 'package:flutter/material.dart';
import 'package:love_dogs/feature/random_match/model/random_match_dog.dart';
import 'package:love_dogs/feature/random_match/view/widgets/action_buttons.dart';
import 'package:love_dogs/feature/random_match/view/widgets/image_widget.dart';

class RandomMatchPage extends StatelessWidget {
  const RandomMatchPage({
    required this.dog,
    super.key,
  });

  final RandomMatchDog dog;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageWidget(
          imageUrl: dog.imageUrl,
          name: dog.name,
          distance: dog.distance,
          breed: dog.breed,
          potentialMatch: dog.potentialMatch,
        ),
        const Expanded(child: ActionButtons()),
      ],
    );
  }
}
