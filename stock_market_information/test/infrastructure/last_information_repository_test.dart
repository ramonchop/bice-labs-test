import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stock_market_information/domain/last_information/i_last_information.dart';
import 'package:stock_market_information/domain/last_information/last_information.dart';
import 'package:stock_market_information/domain/last_information/last_information_failure.dart';
import 'package:stock_market_information/infrastructure/last_information/last_information_repository.dart';

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response {}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt getIt = GetIt.instance;
  final Response mockResponse = MockResponse();
  group('Repository', () {
    setUpAll(() {
      getIt.registerSingleton<Dio>(MockDio());
      getIt.registerSingleton<ILastInformation>(
          LastInformationRepository(client: getIt<Dio>(), url: ''));
    });
    test('fetch', () async {
      final repository = getIt<ILastInformation>();
      final result = await repository.fetch();
      expect(
        result,
        isA<Either<LastInformationFailure, List<LastInformation>>>(),
      );
    });

    test('fetch NOK', () async {
      when(() => getIt<Dio>().get(any())).thenAnswer((_) async => mockResponse);
      when(() => mockResponse.statusCode).thenReturn(404);
      final repository = getIt<ILastInformation>();
      final result = await repository.fetch();
      expect(
        result,
        isA<Either<LastInformationFailure, List<LastInformation>>>(),
      );
      expect(result.isLeft(), true);
    });

    test('fetch no data found', () async {
      when(() => getIt<Dio>().get(any())).thenAnswer((_) async => mockResponse);
      when(() => mockResponse.statusCode).thenReturn(200);
      when(() => mockResponse.data).thenReturn([]);
      final repository = getIt<ILastInformation>();
      final result = await repository.fetch();
      expect(result, const Left(LastInformationFailure.noDataFound()));
    });
  });
}
