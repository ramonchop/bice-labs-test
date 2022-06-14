import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_market_information/application/detail_information/detail_information_bloc.dart';
import 'package:stock_market_information/application/last_information/last_information_bloc.dart';
import 'package:stock_market_information/injection.dart';
import 'package:stock_market_information/presentation/last_information/last_information_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<LastInformationBloc>()
            ..add(const LastInformationEvent.started()),
        ),
        BlocProvider(create: (_) => getIt<DetailInformationBloc>())
      ],
      child: const _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Stock Market Information',
      home: LastInformationScreen(),
    );
  }
}
