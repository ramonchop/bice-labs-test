import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_information.freezed.dart';

extension StringX on String {
  String toUnit() {
    if (toLowerCase() == 'porcentual') return '%';
    if (toLowerCase() == 'pesos') return '\$';
    if (toLowerCase() == 'dolar') return 'USD';
    return this;
  }
}

@freezed
class LastInformation with _$LastInformation {
  const factory LastInformation({
    required String key,
    required String name,
    required String unit,
    required DateTime date,
    required double value,
  }) = _LastInformation;
}
