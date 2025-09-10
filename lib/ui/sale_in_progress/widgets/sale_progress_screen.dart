import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/services/supabase/sale_service_supabase.dart';
import '../viewmodel/sale_progress_viewmodel.dart';


class SaleProgressScreen extends ConsumerWidget {
  const SaleProgressScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final saleProgressList = ref.watch(saleProgressProvider);
    final asyncBulkSale = ref.watch(bulkSaleViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Venta en progreso"),
      ),
      body: asyncBulkSale.when(
        data: (data) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];

              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(10),
                elevation: 10,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Cliente:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(item.customer.name),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Pago adelantado:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(item.amountPaid.toString()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Estado:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(item.status.description),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('Cancelar'),
                            onPressed: () {
                              /* ... */
                            },
                          ),
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('Más información'),
                            onPressed: () {
                              // ref.read(idSelectedSaleProvider.notifier).selectSale(item.id);
                              // final singleSaleList = ref.read(testProvider(item.id));



                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                ),
                                builder: (context) {
                                  return DraggableScrollableSheet(
                                    expand: false,
                                    initialChildSize: 0.5, // empieza a la mitad
                                    minChildSize: 0.1,     // mínimo 30%
                                    maxChildSize: 0.9,     // máximo 90%
                                    builder: (context, scrollController) {
                                      return Consumer(
                                        builder: (context, ref, child) {
                                          final singleSaleList = ref.watch(bulkSaleDetailViewModelProvider(item.id));

                                          return singleSaleList.when(
                                            data: (singleSaleList) {
                                              return ListView.builder(
                                                controller: scrollController, // 👈 importante para que funcione el drag
                                                itemCount: singleSaleList.length,
                                                itemBuilder: (context, index) {
                                                  final singleSale = singleSaleList[index];
                                                  return ListTile(
                                                    title: Text(singleSale.amount.toString()),
                                                    subtitle: Text(singleSale.product.name),
                                                  );
                                                },
                                              );
                                            },
                                            loading: () => const Center(child: CircularProgressIndicator()),
                                            error: (error, stackTrace) => Center(child: Text('$error')),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        loading: () => const CircularProgressIndicator(),
        error: (error, stackTrace) => Text('$error'),
      ),
    );
  }
}