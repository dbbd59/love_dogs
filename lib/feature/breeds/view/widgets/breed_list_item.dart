import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:love_dogs/core/router/constant.dart';
import 'package:love_dogs/core/router/routes.dart';
import 'package:love_dogs/feature/breeds/model/breed_list_item.dart';

class BreedListWidget extends StatelessWidget {
  const BreedListWidget({required this.breed, super.key});

  final BreedListItem breed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: !breed.isSubBreed
          ? () {
              RouteApp.routemaster
                  .push('$RANDOM_MATCH?breed=${breed.breedName}');
            }
          : null,
      child: Padding(
        padding: EdgeInsets.only(
          left: breed.isSubBreed ? 60.0 : 8.0,
          top: 16,
          bottom: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${breed.breedName.capitalize} >',
              style: TextStyle(
                fontSize: !breed.isSubBreed ? 21 : 16,
                fontWeight:
                    !breed.isSubBreed ? FontWeight.bold : FontWeight.normal,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 8,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 5,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      child: Image.network(
                        breed.imagesUrl[index],
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                itemCount: breed.imagesUrl.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
