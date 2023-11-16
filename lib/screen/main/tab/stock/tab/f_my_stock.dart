import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_long_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getMyAccount(context), height10, getMyStock(context)],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            '계좌'.text.make(),
            Row(
              children: [
                '443원'.text.size(24).bold.make(),
                const Arrow(),
                emptyExpanded,
                RoundedContainer(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  radius: 8,
                  backgroundColor: context.appColors.buttonBackground,
                  child: '채우기'.text.size(12).make(),
                ),
              ],
            ),
            height30,
            Line(
              color: context.appColors.divider,
            ),
            height30,
            const LongButton(title: '주문내역'),
            const LongButton(title: '판매내역'),
          ],
        ),
      );

  Widget getMyStock(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        height: 700,
        child: Column(
          children: [
            height30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                '관심주식'.text.bold.make(),
                '편집하기'.text.bold.make(),
              ],
            ),
            height20,
            Row(
              children: [
                '기본'.text.make(),
                const Arrow(
                  direction: AxisDirection.up,
                )
              ],
            )
          ],
        ),
      );
}
