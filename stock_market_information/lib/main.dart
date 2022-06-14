import 'package:injectable/injectable.dart';
import 'package:stock_market_information/app.dart';
import 'package:stock_market_information/bootstrap.dart';
import 'package:stock_market_information/injection.dart';

void main() {
  configureInjection(env: Environment.dev);
  bootstrap(() => const App());
}
