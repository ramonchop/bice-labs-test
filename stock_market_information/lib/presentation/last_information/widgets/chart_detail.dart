import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:stock_market_information/application/detail_information/detail_information_bloc.dart';
import 'package:stock_market_information/domain/detail_information/detail_information.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailInformationBloc, DetailInformationState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox(),
          loading: (_) => const Center(child: CircularProgressIndicator()),
          success: (state) => _ChartDetail(
            list: state.data,
            title: state.key,
          ),
          failure: (_) => const SizedBox(
            child: Center(
              child: Text('Error'),
            ),
          ),
        );
      },
    );
  }
}

class _ChartDetail extends StatelessWidget {
  const _ChartDetail({required this.list, required this.title, Key? key})
      : super(key: key);

  final List<DetailInformation> list;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final title = toBeginningOfSentenceCase(this.title);
    return Column(
      children: [
        const Gap(10),
        Center(
          child: Text(
            '$title Historial',
            style: textTheme.headlineMedium,
          ),
        ),
        const Gap(10),
        SfCartesianChart(
          plotAreaBorderWidth: 0,
          primaryXAxis: DateTimeAxis(
              name: 'X-Axis', majorGridLines: const MajorGridLines(width: 0)),
          primaryYAxis: NumericAxis(
              axisLine: const AxisLine(width: 0),
              anchorRangeToVisiblePoints: true,
              majorTickLines: const MajorTickLines(size: 0)),
          // series: _getMarkeSeries(list: list),
          series: getDefaultPanningSeries(list: list),
          zoomPanBehavior: ZoomPanBehavior(
            zoomMode: ZoomMode.x,
            enablePinching: true,
            enablePanning: true,
          ),
        ),
      ],
    );
  }

  List<AreaSeries<DetailInformation, DateTime>> getDefaultPanningSeries(
      {required List<DetailInformation> list}) {
    return <AreaSeries<DetailInformation, DateTime>>[
      AreaSeries<DetailInformation, DateTime>(
        dataSource: list,
        xValueMapper: (DetailInformation detail, _) => detail.date,
        yValueMapper: (DetailInformation detail, _) => detail.value,
        gradient: LinearGradient(
          colors: <Color>[
            Colors.green.withOpacity(0.1),
            Colors.green.withOpacity(0.5),
            Colors.green
          ],
          stops: const <double>[0.0, 0.4, 1.0],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
    ];
  }
}
