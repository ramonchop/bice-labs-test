import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjectableModule {
  @lazySingleton
  Dio get dio => Dio();

  @Named("baseUrl")
  String get baseUrl =>
      'https://steam-glass-352620.rj.r.appspot.com/indicators';
}
