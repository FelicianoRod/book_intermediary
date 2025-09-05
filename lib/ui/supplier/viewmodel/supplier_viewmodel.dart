import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/models/supplier_status.dart';

part 'supplier_viewmodel.g.dart';

@riverpod
List<SupplierStatus> supplierStatus(SupplierStatusRef ref) {
  return [
    SupplierStatus(
      code: 234,
      title: "Como lo ve Bill",
      amount: 1,
      total: 123,
      paid: 100,
      debt: 123,
      lastUpdated: DateTime.now(),
      status: "Solicitado",
    ),
    SupplierStatus(
      code: 832,
      title: "Compendio 1",
      amount: 1,
      total: 143,
      paid: 120,
      debt: 100,
      lastUpdated: DateTime.now(),
      status: "Solicitado",
    ),
    SupplierStatus(
      code: 233,
      title: "Como lo ve Bill",
      amount: 1,
      total: 123,
      paid: 100,
      debt: 123,
      lastUpdated: DateTime.now(),
      status: "Solicitado",
    ),
  ];
}
