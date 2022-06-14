import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_market_information/domain/last_information/i_last_information.dart';
import 'package:stock_market_information/domain/last_information/last_information.dart';

part 'last_information_event.dart';
part 'last_information_state.dart';
part 'last_information_bloc.freezed.dart';

@injectable
class LastInformationBloc
    extends Bloc<LastInformationEvent, LastInformationState> {
  LastInformationBloc(ILastInformation repository)
      : _repository = repository,
        super(const LastInformationState.initial()) {
    on<LastInformationEvent>(_onLastInformationEvent);
  }
  final ILastInformation _repository;

  FutureOr<void> _onLastInformationEvent(
    LastInformationEvent event,
    Emitter<LastInformationState> emit,
  ) async {
    emit(const LastInformationState.loading());
    final result = await _repository.fetch();
    emit(result.fold(
      (l) => const LastInformationState.failure(),
      (r) => LastInformationState.success(data: r),
    ));
  }
}
