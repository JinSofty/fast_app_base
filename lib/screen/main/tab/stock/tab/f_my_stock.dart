import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getMyAccount(context), height10, myStock],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        color: context.appColors.roundedLayoutBackground,
      );

  Widget get myStock => Container(
        color: Colors.amber,
      );
}
