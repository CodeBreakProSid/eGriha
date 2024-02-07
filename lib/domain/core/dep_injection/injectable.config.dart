// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/login/login_bloc.dart' as _i7;
import '../../../application/profile/profile_bloc.dart' as _i8;
import '../../../infrastructure/login/login_service_implementation.dart' as _i4;
import '../../../infrastructure/profile/profile_service_implementation.dart'
    as _i6;
import '../../login/login_service.dart' as _i3;
import '../../profile/profile_service.dart' as _i5;

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
    gh.lazySingleton<_i3.LoginService>(() => _i4.LoginServiceImplementation());
    gh.lazySingleton<_i5.ProfileService>(
        () => _i6.ProfileServiceImplementation());
    gh.factory<_i7.LoginBloc>(() => _i7.LoginBloc(gh<_i3.LoginService>()));
    gh.factory<_i8.ProfileBloc>(
        () => _i8.ProfileBloc(gh<_i5.ProfileService>()));
    return this;
  }
}
