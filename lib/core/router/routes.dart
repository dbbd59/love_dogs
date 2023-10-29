import 'package:flutter/material.dart';
import 'package:love_dogs/core/router/constant.dart';
import 'package:love_dogs/feature/breeds/view/breeds_view.dart';
import 'package:love_dogs/feature/common/app_scaffold.dart';
import 'package:love_dogs/feature/random_match/view/random_match_view.dart';
import 'package:routemaster/routemaster.dart';

class RouteApp {
  static const routeInformationParser = RoutemasterParser();
  static final routemaster = RoutemasterDelegate(
    routesBuilder: (context) {
      return routes();
    },
  );

  static void initRoutes() {
    Routemaster.setPathUrlStrategy();
  }

  static RouteMap routes() {
    return RouteMap(
      onUnknownRoute: (route) {
        return MaterialPage(
          name: 'Not Found',
          child: Scaffold(
            body: Center(
              child: Text(
                'Route $route not found',
              ),
            ),
          ),
        );
      },
      routes: {
        ROOT: (_) => IndexedPage(
              pageBuilder: (child) => MaterialPage(child: child),
              child: const AppScaffold(),
              paths: [RANDOM_MATCH, BREEDS, FAVORITES],
            ),
        RANDOM_MATCH: (route) => const MaterialPage(
              child: RandomMatchView(),
            ),
        BREEDS: (route) => const MaterialPage(
              child: BreedsView(),
            ),
        FAVORITES: (route) => const MaterialPage(
              child: Center(
                child: Text(
                  'Favorites',
                ),
              ),
            ),
      },
    );
  }
}
