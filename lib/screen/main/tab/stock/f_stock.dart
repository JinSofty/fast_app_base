import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/f_my_stock.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/f_todays_discovery.dart';
import 'package:flutter/material.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;

  late final TabController tabController =
      TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: context.appColors.roundedLayoutBackground,
          pinned: true,
          actions: [
            ImageButton(
              imagePath: '$basePath/icon/stock_search.png',
              onTap: () {
                context.showSnackbar('검색');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_calendar.png',
              onTap: () {
                context.showSnackbar('일정');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_settings.png',
              onTap: () {
                context.showSnackbar('설정');
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            title,
            tabBar,
            if (currentIndex == 0)
              const MyStockFragment()
            else
              const TodaysDiscoveryFragment()
          ],
        ))
      ],
    );
  }

  // TODO: implement widget
  Widget get title => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          '토스증권'.text.size(24).bold.make(),
          width10,
          'S&P500'.text.size(12).color(context.appColors.lessImportant).make(),
          width10,
          2101.29
              .toComma()
              .text
              .size(13)
              .bold
              .color(context.appColors.plus)
              .make(),
        ],
      ).pOnly(left: 20);

  Widget get tabBar => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              labelPadding: const EdgeInsets.only(top: 20, bottom: 5),
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              indicatorColor: Colors.white,
              controller: tabController,
              tabs: [
                '내주식'.text.make(),
                '오늘의 발견'.text.make(),
              ],
            ).pOnly(left: 5, right: 5),
            const Line(
              //color: Colors.amber,
              margin: EdgeInsets.symmetric(horizontal: 5),
            ),
          ],
        ),
      );
}
