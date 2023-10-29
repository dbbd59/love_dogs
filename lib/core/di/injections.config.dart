// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:love_dogs/core/repo/theme_repo.dart' as _i4;
import 'package:love_dogs/feature/random_match/cubit/random_match_cubit.dart'
    as _i5;
import 'package:love_dogs/feature/random_match/repo/random_match_repo.dart'
    as _i3;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.RandomMatchRepo>(() => _i3.RandomMatchRepo());
  gh.singleton<_i4.ThemeRepo>(_i4.ThemeRepo());
  gh.factory<_i5.RandomMatchCubit>(
      () => _i5.RandomMatchCubit(repo: gh<_i3.RandomMatchRepo>()));
  return getIt;
}
