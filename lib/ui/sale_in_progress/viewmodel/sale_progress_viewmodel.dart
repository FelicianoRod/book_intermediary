import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/models/customer_model.dart';
import '../../../domain/models/sale_progress.dart';

part 'sale_progress_viewmodel.g.dart';

@riverpod
List<SaleProgress> saleProgress(SaleProgressRef ref) {
  return [
    SaleProgress(
      customer: Customer(
        id: 1,
        name: "En busca de sobriedad"
      ),
      title: "Como lo ve Bill",
      amount: 1,
      total: 125,
      paid: 100,
      debt: 25,
      lastUpdated: DateTime.now(),
      status: "Entregado",
    ),
  ];
}
