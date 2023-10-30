import 'package:flutter/material.dart';
import 'package:love_dogs/core/repo/theme_manager.dart';
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
                context.read<ThemeManager>().switchTheme();
              },
              icon: context.watch<ThemeManager>().themeMode == ThemeMode.light
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
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
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
          const NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'Random Match',
          ),
          const NavigationDestination(
            icon: Icon(Icons.list_rounded),
            label: 'Breeds',
          ),
          const NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
