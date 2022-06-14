import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_market_information/domain/last_information/last_information.dart';
import 'package:stock_market_information/presentation/core/constants/colors.dart';
import 'package:stock_market_information/presentation/last_information/widgets/carousel_sliders.dart';
import 'package:stock_market_information/presentation/last_information/widgets/chart_detail.dart';

class LastInformationBodyLarge extends StatelessWidget {
  const LastInformationBodyLarge({
    required this.list,
    super.key,
  });

  final List<LastInformation> list;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: kBlue,
            toolbarHeight: 100,
            title: Center(
                child: Text(
              'Stock Market Information',
              style: textTheme.displaySmall!.copyWith(color: Colors.white),
            )),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(32, 32, 0, 0),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Last Indicators',
                style: GoogleFonts.openSans(
                  color: Colors.black87,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CarouselSliders(
              key: const ValueKey('carousel_employees'),
              list: list,
            ),
          ),
          const SliverToBoxAdapter(child: Chart()),
        ],
      ),
    );
  }
}
