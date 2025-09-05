import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodel/sale_progress_viewmodel.dart';


class SaleProgressScreen extends ConsumerWidget {
  const SaleProgressScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saleProgressList = ref.watch(saleProgressProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Venta en progreso"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: DataTable(
            columns: [
              DataColumn(
                label: Text('Cliente'),
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
            rows: saleProgressList.map((item) {
              return DataRow(
                cells: [
                  DataCell(
                    Text(item.customer.name.toString()),
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