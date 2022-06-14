import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stock_market_information/domain/detail_information/detail_information_failure.dart';
import 'package:stock_market_information/domain/detail_information/i_detail_information.dart';
import 'package:stock_market_information/infrastructure/detail_information/detail_information_repository.dart';

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response {}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt getIt = GetIt.instance;
  final Response mockResponse = MockResponse();
  group('Repository Detail Information', () {
    setUpAll(() {
      getIt.registerSingleton<Dio>(Dio());
      getIt.registerSingleton<IDetailInformation>(DetailInformationRepository(
        client: getIt<Dio>(),
        url: 'https://steam-glass-352620.rj.r.appspot.com/indicators',
      ));
    });
    test('fetch', () async {
      final repository = getIt<IDetailInformation>();
      final result = await repository.getDetails(key: 'cobre');
      expect(
        result.isRight(),
        true,
      );
    });

    tearDownAll(() {
      getIt.reset();
    });
  });

  group('Repository Detail Information Mock', () {
    setUpAll(() {
      getIt.registerSingleton<Dio>(MockDio());
      getIt.registerSingleton<IDetailInformation>(DetailInformationRepository(
        client: getIt<Dio>(),
        url: '',
      ));
    });

    test('fetch NOK', () async {
      when(() => getIt<Dio>().get(any())).thenAnswer((_) async => mockResponse);
      when(() => mockResponse.statusCode).thenReturn(404);
      final repository = getIt<IDetailInformation>();
      final result = await repository.getDetails(key: 'cobres');
      expect(result, const Left(DetailInformationFailure.noDataFound()));
    });

    test('fetch no data found', () async {
      when(() => getIt<Dio>().get(any())).thenAnswer((_) async => mockResponse);
      when(() => mockResponse.statusCode).thenReturn(200);
      when(() => mockResponse.data).thenReturn([]);
      final repository = getIt<IDetailInformation>();
      final result = await repository.getDetails(key: 'cobres');
      expect(result, const Left(DetailInformationFailure.noDataFound()));
    });

    tearDownAll(() {
      getIt.reset();
    });
  });
}
