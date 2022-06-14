import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:stock_market_information/application/detail_information/detail_information_bloc.dart';
import 'package:stock_market_information/domain/last_information/last_information.dart';
import 'package:stock_market_information/presentation/core/constants/colors.dart';
import 'package:stock_market_information/presentation/core/constants/numbers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarouselSliders extends StatefulWidget {
  const CarouselSliders({
    required this.list,
    super.key,
  });

  final List<LastInformation> list;

  @override
  State<CarouselSliders> createState() => _CarouselSlidersState();
}

class _CarouselSlidersState extends State<CarouselSliders> {
  late int page;
  late PageController pageController;
  late List<LastInformation> list;
  late CarouselController carouselController;
  late bool isFirst;
  late bool isLast;
  late bool isFirstServices;
  late bool isLastServices;
  late int lastPage;
  late double viewportFraction;
  late String? selectedKey;

  @override
  void initState() {
    list = widget.list;
    viewportFraction = 0.25;
    carouselController = CarouselController();
    page = 0;
    isFirst = true;
    isLast = false;
    lastPage = list.length - (1 ~/ viewportFraction);
    selectedKey = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
      child: SizedBox(
          height: 210,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 96,
                right: 96,
                top: 0,
                bottom: 0,
                child: CarouselSlider(
                  options: CarouselOptions(
                    padEnds: false,
                    enableInfiniteScroll: false,
                    viewportFraction: viewportFraction,
                    onPageChanged: (index, reason) {
                      setState(() {
                        isFirst = index == 0;
                        isLast = index == lastPage;
                      });
                    },
                  ),
                  carouselController: carouselController,
                  items: list
                      .map((e) => CustomCard(
                            lastInformation: e,
                            onTap: onTap,
                            selectedKey: selectedKey,
                          ))
                      .toList(),
                ),
              ),
              Positioned(
                left: 32,
                top: 0,
                bottom: 0,
                child: Visibility(
                  visible: !isFirst,
                  child: IconButton(
                    icon: const Icon(Icons.keyboard_arrow_left_rounded),
                    color: Colors.black,
                    onPressed: () {
                      carouselController.previousPage();
                    },
                  ),
                ),
              ),
              Positioned(
                right: 32,
                top: 0,
                bottom: 0,
                child: Visibility(
                  visible: !isLast,
                  child: IconButton(
                    icon: const Icon(Icons.keyboard_arrow_right_rounded),
                    color: Colors.black,
                    onPressed: () {
                      carouselController.nextPage();
                    },
                  ),
                ),
              )
            ],
          )),
    );
  }

  void onTap(LastInformation lastInformation) {
    final key = lastInformation.key;
    context
        .read<DetailInformationBloc>()
        .add(DetailInformationEvent.select(key: key));
    setState(() {
      selectedKey = key;
    });
  }
}

typedef OnTap = void Function(LastInformation lastInformation);

class CustomCard extends StatefulWidget {
  const CustomCard({
    required this.lastInformation,
    required this.onTap,
    required this.selectedKey,
    super.key,
  });
  final LastInformation lastInformation;
  final OnTap onTap;
  final String? selectedKey;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    const color = kBlue;
    const colorSelected = Colors.green;
    final key = widget.lastInformation.key;
    final title = widget.lastInformation.key;
    final subtitle = widget.lastInformation.name;
    final unit = widget.lastInformation.unit;
    final value = widget.lastInformation.value;
    final dateRaw = widget.lastInformation.date;
    final date = DateFormat("dd-MM-yyyy").format(dateRaw);
    final selectedKey = widget.selectedKey;
    final onTap = widget.onTap;

    final colorBorder =
        selectedKey == null || selectedKey != key ? color : colorSelected;
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kRadius),
      ),
      child: InkWell(
        onTap: () {
          onTap.call(widget.lastInformation);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                color: colorBorder.withOpacity(0.7),
              ),
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Gap(10),
                  Center(
                    child: Text(
                      title.toUpperCase(),
                      style: textTheme.titleLarge,
                    ),
                  ),
                  const Gap(5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text(
                      subtitle,
                      style: textTheme.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text(
                      '${unit.toUnit()} $value',
                      style: textTheme.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text(
                      date,
                      style: textTheme.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Gap(10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
