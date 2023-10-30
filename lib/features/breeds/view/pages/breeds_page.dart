import 'package:flutter/material.dart';
import 'package:love_dogs/features/breeds/model/breed_list_item.dart';
import 'package:love_dogs/features/breeds/view/widgets/breed_list_item.dart';

class BreedListPage extends StatelessWidget {
  const BreedListPage({
    required this.breedsItem,
    super.key,
  });

  final List<BreedListItem> breedsItem;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) => BreedListWidget(breed: breedsItem[index]),
      itemCount: breedsItem.length,
    );
  }
}
