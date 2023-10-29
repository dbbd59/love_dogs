import 'package:flutter/material.dart';
import 'package:love_dogs/feature/breeds/model/breed_list_item.dart';

class BreedListWidget extends StatelessWidget {
  const BreedListWidget({required this.breed, super.key});

  final BreedListItem breed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: breed.isSubBreed ? 60.0 : 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            breed.breedName,
            style: TextStyle(
              fontSize: !breed.isSubBreed ? 21 : 16,
              fontWeight:
                  !breed.isSubBreed ? FontWeight.bold : FontWeight.normal,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => Image.network(breed.imagesUrl[index]),
              itemCount: breed.imagesUrl.length,
            ),
          ),
        ],
      ),
    );
  }
}
