import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:developer' as developer;

import '../../../data/repositories/sale_repository.dart';
import '../../../domain/models/bulk_sale_model.dart';
import '../../../domain/models/customer_model.dart';
import '../../../domain/models/sale_progress.dart';
import '../../../domain/models/single_sale_model.dart';

part 'sale_progress_viewmodel.g.dart';

@riverpod
class IdSelectedSale extends _$IdSelectedSale {
  @override
  int? build() => null;

  void selectSale(int id) {
    state = id;
  }
}

// Eliminar
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

@riverpod
Future<List<BulkSale>> bulkSaleViewModel(BulkSaleViewModelRef ref) async {
  final bulkSale = await ref.watch(bulkSaleRepositoryProvider.future);
  return bulkSale;
}

// @riverpod
// Future<List<SingleSale>> singleSaleViewModel(
//     SingleSaleViewModelRef ref) async {
//
//   final singleSaleList = await ref.watch(singleSaleViewModelProvider.future);
//   return singleSaleList;
// }

@riverpod
class SingleSaleViewModel extends _$SingleSaleViewModel {
  @override
  FutureOr<List<SingleSale>> build() async {
    return [];
  }

  Future<void> selectSale(int id) async {
    // final singleSaleList = await ref.watch(singleSaleRepositoryProvider(id).future);
    // state = singleSaleList;
  }
}

/// Ejemplo de family con parámetro dinámico
@riverpod
class BulkSaleDetailViewModel extends _$BulkSaleDetailViewModel {
  @override
  AsyncValue<List<SingleSale>> build(int idBulkSale) {
    return ref.watch(bulkSaleDetailRepositoryProvider(idBulkSale));



      // return asyncValue.when(
      //   data: (data) {
      //     developer.log('Mostrando un dato - ViewModel');
      //     developer.log('Producto ${data.first.product.name} - ViewModel ');
      //     return AsyncValue.data(data);
      //   },
      //   loading: () {
      //     developer.log('Estamos esperando los datos - ViewModel');
      //     return const AsyncValue.loading();
      //   },
      //   error: (error, stackTrace) {
      //     developer.log('ALGO NO ANDA BIEN, ERROR! - ViewModel');
      //     developer.log('$error');
      //     developer.log('STACKTRACE - ViewModel');
      //     developer.log('$stackTrace');
      //     return AsyncValue.error(error, stackTrace);
      //   }
      // );
  }

  // @override
  // FutureOr<List<SingleSale>> build(int idBulkSale) async {
  //
  //   // final todos = await ref.watch(singleSaleRepositoryProvider.future);
  //   // return todos.firstWhere((t) => t.id == idBulkSale, orElse: () => SingleSale(id: idBulkSale, title: 'No encontrado'));
  //   try {
  //     final dataList = await ref.watch(bulkSaleDetailRepositoryProvider(idBulkSale).future);
  //     developer.log('Datos obtenidos - ViewModel');
  //     developer.log('${dataList.map((item) => item.product.name).toList()} - ViewModel');
  //     return dataList;
  //   } catch (e, st) {
  //     developer.log('$e - ViewModel');
  //     developer.log('$st - ViewModel');
  //     return [];
  //   }
  //   // return asyncValue.when(
  //   //   data: (data) {
  //   //     developer.log('Mostrando un dato - ViewModel');
  //   //     developer.log('Producto ${data.first.product.name} - ViewModel ');
  //   //     return data;
  //   //   },
  //   //   loading: () {
  //   //     developer.log('Estamos esperando los datos - ViewModel');
  //   //     return [];
  //   //   },
  //   //   error: (error, stackTrace) {
  //   //     developer.log('ALGO NO ANDA BIEN, ERROR! - ViewModel');
  //   //     developer.log('$error');
  //   //     developer.log('STACKTRACE - ViewModel');
  //   //     developer.log('$stackTrace');
  //   //     return [];
  //   //   }
  //   // );
  // }
}
