import 'package:flutter/material.dart';
import 'package:love_dogs/core/di/injections.dart';
import 'package:love_dogs/core/repo/theme_manager.dart';
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
          create: (context) => getDependency<ThemeManager>(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            routeInformationParser: RouteApp.routeInformationParser,
            darkTheme: context.read<ThemeManager>().darkTheme,
            theme: context.read<ThemeManager>().lightTheme,
            themeMode: context.watch<ThemeManager>().themeMode,
            routerDelegate: RouteApp.routemaster,
          );
        },
      ),
    );
  }
}
