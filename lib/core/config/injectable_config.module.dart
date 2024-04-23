//@GeneratedMicroModule;AlabsFlutterCorePackageModule;package:alabs_flutter_core/core/config/injectable_config.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:alabs_flutter_core/core/config/core_module.dart' as _i7;
import 'package:alabs_flutter_core/core/data/dataSource/secure_data_source.dart'
    as _i4;
import 'package:alabs_flutter_core/core/data/repository/core_auth_data_repository.dart'
    as _i5;
import 'package:alabs_flutter_core/core/data/repository/core_system_repository.dart'
    as _i6;
import 'package:injectable/injectable.dart' as _i1;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

class AlabsFlutterCorePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) async {
    final coreModule = _$CoreModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => coreModule.prefs,
      preResolve: true,
    );
    gh.factory<_i4.SecureDataSource>(
        () => _i4.SecureDataSource(gh<_i3.SharedPreferences>()));
    gh.lazySingleton<_i5.CoreAuthDataRepository>(
        () => _i5.CoreAuthDataRepository(gh<_i4.SecureDataSource>()));
    gh.lazySingleton<_i6.CoreSystemRepository>(
        () => _i6.CoreSystemRepository(gh<_i4.SecureDataSource>()));
  }
}

class _$CoreModule extends _i7.CoreModule {}
