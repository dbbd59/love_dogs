import 'package:flutter/material.dart';
import 'package:love_dogs/core/di/injections.dart';
import 'package:love_dogs/core/repo/theme_repo.dart';
import 'package:love_dogs/core/router/routes.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  RouteApp.initRoutes();
  initDependencies();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => getDependency<ThemeRepo>(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            routeInformationParser: RouteApp.routeInformationParser,
            routerDelegate: RouteApp.routemaster,
            darkTheme: context.read<ThemeRepo>().darkTheme,
            theme: context.read<ThemeRepo>().lightTheme,
            themeMode: context.watch<ThemeRepo>().themeMode,
          );
        },
      ),
    );
  }
}
