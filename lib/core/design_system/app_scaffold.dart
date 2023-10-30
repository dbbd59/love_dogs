import 'package:flutter/material.dart';
import 'package:love_dogs/core/repo/theme_repo.dart';
import 'package:love_dogs/core/router/constant.dart';
import 'package:love_dogs/core/router/routes.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final indexedPage = IndexedPage.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(
                    'assets/nala.jpeg',
                    height: 32.0,
                    width: 32.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  'Love Dogs',
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                context.read<ThemeRepo>().switchTheme();
              },
              icon: context.watch<ThemeRepo>().themeMode == ThemeMode.light
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode),
            ),
          ],
        ),
      ),
      body: PageStackNavigator(
        stack: indexedPage.currentStack,
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        onDestinationSelected: (int index) {
          switch (index) {
            case 0:
              RouteApp.routemaster.push(RANDOM_MATCH);
            case 1:
              RouteApp.routemaster.push(BREEDS);
            case 2:
              RouteApp.routemaster.push(FAVORITES);
          }
        },
        selectedIndex: indexedPage.index,
        destinations: <Widget>[
          NavigationDestination(
            icon: Semantics(
              container: true,
              label: 'RandomMatch',
              image: true,
              child: const Icon(Icons.favorite),
            ),
            label: 'RandomMatch',
          ),
          NavigationDestination(
            icon: Semantics(
              container: true,
              label: 'Breeds',
              image: true,
              child: const Icon(Icons.list_rounded),
            ),
            label: 'Breeds',
          ),
          NavigationDestination(
            icon: Semantics(
              container: true,
              label: 'Favorites',
              image: true,
              child: const Icon(Icons.bookmark),
            ),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
