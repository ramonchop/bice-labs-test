// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/detail_information/detail_information_bloc.dart' as _i9;
import 'application/last_information/last_information_bloc.dart' as _i8;
import 'domain/detail_information/i_detail_information.dart' as _i4;
import 'domain/last_information/i_last_information.dart' as _i6;
import 'infrastructure/core/dio_injectable_module.dart' as _i10;
import 'infrastructure/detail_information/detail_information_repository.dart'
    as _i5;
import 'infrastructure/last_information/last_information_repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInjectableModule = _$DioInjectableModule();
  gh.lazySingleton<_i3.Dio>(() => dioInjectableModule.dio);
  gh.factory<String>(() => dioInjectableModule.baseUrl,
      instanceName: 'baseUrl');
  gh.lazySingleton<_i4.IDetailInformation>(() =>
      _i5.DetailInformationRepository(
          client: get<_i3.Dio>(), url: get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i6.ILastInformation>(() => _i7.LastInformationRepository(
      client: get<_i3.Dio>(), url: get<String>(instanceName: 'baseUrl')));
  gh.factory<_i8.LastInformationBloc>(
      () => _i8.LastInformationBloc(get<_i6.ILastInformation>()));
  gh.factory<_i9.DetailInformationBloc>(
      () => _i9.DetailInformationBloc(get<_i4.IDetailInformation>()));
  return get;
}

class _$DioInjectableModule extends _i10.DioInjectableModule {}
