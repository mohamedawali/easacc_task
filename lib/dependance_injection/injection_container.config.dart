// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../feature/login/data/data_source/login_data_source.dart' as _i3;
import '../feature/login/data/repository/login_repository_impl.dart' as _i5;
import '../feature/login/domain/repository/login_repository.dart' as _i4;
import '../feature/login/domain/use_case/login_use_case.dart' as _i6;
import '../feature/login/domain/use_case/login_with_google_use_case.dart'
    as _i7;
import '../feature/login/presentation/cubit/login_cubit.dart' as _i9;
import '../feature/setting/presentation/cubit/setting_cubit.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.LoginDataSource>(() => _i3.LoginDataSourceImpl());
    gh.lazySingleton<_i4.LoginRepository>(
        () => _i5.LoginRepositoryImpl(gh<_i3.LoginDataSource>()));
    gh.lazySingleton<_i6.LoginWithFacebookUseCase>(
        () => _i6.LoginWithFacebookUseCase(gh<_i4.LoginRepository>()));
    gh.lazySingleton<_i7.LoginWithGoogleUseCase>(
        () => _i7.LoginWithGoogleUseCase(gh<_i4.LoginRepository>()));
    gh.lazySingleton<_i8.SettingCubit>(() => _i8.SettingCubit());
    gh.lazySingleton<_i9.LoginCubit>(() => _i9.LoginCubit(
          gh<_i6.LoginWithFacebookUseCase>(),
          gh<_i7.LoginWithGoogleUseCase>(),
        ));
    return this;
  }
}
