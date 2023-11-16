import 'package:fast_app_base/screen/main/tab/stock/tab/stock_percentage_data_provider.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/vo_simple_stock.dart';

class PopularStock extends SimpleStock with StockPercentageProvider {
  @override
  final int yesterdayClosePrice;
  @override
  final int currentPrice;

  PopularStock(
      {required this.yesterdayClosePrice,
      required this.currentPrice,
      required super.stockName});
}
