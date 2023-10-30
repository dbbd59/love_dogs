import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_dogs/features/favorites/cubit/favorite_cubit.dart';
import 'package:love_dogs/features/favorites/model/favorite_dog.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({
    required this.favoriteDogs,
    super.key,
  });

  final List<FavoriteDog> favoriteDogs;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        return Semantics(
          container: true,
          label: 'Favorite_$index',
          image: true,
          child: ListTile(
            title: Text(favoriteDogs[index].name),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.network(
                favoriteDogs[index].imageUrl,
                height: 64.0,
                width: 64.0,
                fit: BoxFit.cover,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                context
                    .read<FavoriteCubit>()
                    .delete(favoriteDogs[index].imageUrl);
              },
            ),
          ),
        );
      },
      itemCount: favoriteDogs.length,
    );
  }
}
