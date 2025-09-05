import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodel/supplier_viewmodel.dart';

class SupplierScreen extends ConsumerWidget {
  const SupplierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supplierStatus = ref.watch(supplierStatusProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Proveedor"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: DataTable(
            columns: [
              DataColumn(
                label: Text('Código'),
              ),
              DataColumn(
                label: Text('Título')
              ),
              DataColumn(
                label: Text('Cantidad'),
              ),
              DataColumn(
                label: Text('Total'),
              ),
              DataColumn(
                label: Text('Pago')
              ),
              DataColumn(
                label: Text('Adeudo')
              ),
              DataColumn(
                label: Text('Última modificación')
              ),
              DataColumn(
                label: Text('Estado')
              ),
            ],
            rows: supplierStatus.map((item) {
              return DataRow(
                cells: [
                  DataCell(
                    Text(item.code.toString()),
                  ),
                  DataCell(
                    Text(item.title),
                  ),
                  DataCell(
                    Text(item.amount.toString()),
                  ),
                  DataCell(
                    Text(item.total.toString())
                  ),
                  DataCell(
                    Text(item.paid.toString()),
                  ),
                  DataCell(
                    Text(item.debt.toString()),
                  ),
                  DataCell(
                    Text(item.lastUpdated.toString()),
                  ),
                  DataCell(
                    Text(item.status),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}