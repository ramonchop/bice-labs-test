import 'package:flutter/material.dart';
import 'package:stock_market_information/domain/last_information/last_information.dart';
import 'package:stock_market_information/presentation/core/layout/responsive_layout_builder.dart';
import 'package:stock_market_information/presentation/last_information/widgets/last_information_body_large.dart';

class LastInformationBody extends StatelessWidget {
  const LastInformationBody({
    required this.list,
    super.key,
  });

  final List<LastInformation> list;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      small: (BuildContext context, Widget? child) => child!,
      medium: (BuildContext context, Widget? child) => child!,
      large: (BuildContext context, Widget? child) => child!,
      child: (BuildContext context, ResponsiveLayoutSize layoutSize) {
        return LastInformationBodyLarge(list: list);
      },
    );
  }
}
