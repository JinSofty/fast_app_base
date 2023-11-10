import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/constants.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:flutter/material.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
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
          child: Container(
            height: 1500,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
