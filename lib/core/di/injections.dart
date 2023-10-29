import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:love_dogs/core/di/injections.config.dart';

T getDependency<T extends Object>() => GetIt.instance<T>();

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
  asExtension: false,
)
Future<void> initDependencies() async => $initGetIt(GetIt.I);

@module
abstract class RegisterModule {}
