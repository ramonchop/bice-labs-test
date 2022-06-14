import 'package:stock_market_information/application/last_information/last_information_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_market_information/presentation/last_information/last_information_body.dart';

class LastInformationScreen extends StatelessWidget {
  const LastInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final delegate = QuadratureScreenLayoutDelegate();

    return BlocConsumer<LastInformationBloc, LastInformationState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            success: (state) => LastInformationBody(list: state.data),
            failure: (_) => const SizedBox(
              child: Center(
                child: Text('Error'),
              ),
            ),
          );
        });
  }
}
