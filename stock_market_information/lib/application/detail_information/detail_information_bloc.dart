import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_market_information/domain/detail_information/detail_information.dart';
import 'package:stock_market_information/domain/detail_information/i_detail_information.dart';

part 'detail_information_event.dart';
part 'detail_information_state.dart';
part 'detail_information_bloc.freezed.dart';

@injectable
class DetailInformationBloc
    extends Bloc<DetailInformationEvent, DetailInformationState> {
  DetailInformationBloc(IDetailInformation repository)
      : _repository = repository,
        super(const _Initial()) {
    on<DetailInformationEvent>(_onDetailinformationEvent);
  }

  final IDetailInformation _repository;

  FutureOr<void> _onDetailinformationEvent(
    DetailInformationEvent event,
    Emitter<DetailInformationState> emit,
  ) async {
    emit(const DetailInformationState.loading());
    final result = await _repository.getDetails(key: event.key);
    emit(result.fold(
      (l) => const DetailInformationState.failure(),
      (r) => DetailInformationState.success(data: r, key: event.key),
    ));
  }
}
