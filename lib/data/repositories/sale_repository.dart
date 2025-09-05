import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:servicio_sobriedad_plenitud/data/entities/bulk_sale_entity.dart';

import '../../domain/models/product_cart_model.dart';
import '../providers/objectbox_provider.dart';
import '../services/sale_service.dart';

part 'sale_repository.g.dart';

// part 'sale_repository.g.dart';
//
// @riverpod
// class SaleRepository extends _$SaleRepository {
//   @override
//   FutureOr<List<ProductCart>> build() async {
//     return [];
//   }
// }

// class SaleRepository {
//   final ObjectBox _db;
//
//   SaleRepository(this._db);
//
//   String saleCustomer(
//       int vendorId,
//       int customerId,
//       double paid,
//       List<int> amount,
//       List<int> productsId,
//       int statusId,
//       ) {
//     _db.saleCustomer(
//       vendorId,
//       customerId,
//       paid,
//       amount,
//       productsId,
//       statusId
//     );
//     return "Success";
//   }
// }

@riverpod
class CartPurchaseRep extends _$CartPurchaseRep {
  @override
  FutureOr<void> build() async {

  }

  Future<void> cartPurchase(
      int vendorId,
      int customerId,
      double paid,
      List<ProductCart> items,
      ) async {
    final cartPurchaseSer = ref.read(cartPurchaseSerProvider.notifier);
    cartPurchaseSer.cartPurchase(vendorId, customerId, paid, items);
  }
}
//
// @riverpod
// class SaleRepository extends _$SaleRepository {
//   @override
//   FutureOr<List<BulkSaleEntity>> build() async {
//     return [];
//   }
//
//   Future<ResultSell<List<BulkSaleEntity>>> sellShoppingCartRep(
//       int vendorId,
//       int customerId,
//       double paid,
//       List<ItemPurchasedIds> items,
//       ) async {
//     try {
//       final saleService = ref.read(saleServiceProvider.notifier);
//       final info = saleService.sellShoppingCartSer(
//         vendorId,
//         customerId,
//         paid,
//         items,
//       );
//
//       // return Result.success();
//       return ResultSell.success([]);
//     } catch (e) {
//       return ResultSell.error('Error al realizar la compra.');
//     }
//
//   }

  // Future<ResultGet<List<BulkSaleEntity>>> getSales() async {
  //   try {
  //     final saleService = ref.read(saleServiceProvider.notifier);
  //     final saleList = await saleService.getSales();
  //     return ResultGet.success(saleList);
  //   } catch (e) {
  //     return ResultGet.error("Error al obtener los datos");
  //   }
  // }
// }

class ResultSell<T> {
  final T? data;
  final String? error;
  final String? success;

  ResultSell._(this.data, this.error, this.success);

  factory ResultSell.success(T data) => ResultSell._(data, null, "Compra realizada exitosamente");
  factory ResultSell.error(String error) => ResultSell._(null, error, null);
}

class ResultGet<T> {
  final T? data;
  final String? error;
  final String? success;

  ResultGet._(this.data, this.error, this.success);

  factory ResultGet.success(T data)  => ResultGet._(data, null, "Datos obtenidos");
  factory ResultGet.error(String error) => ResultGet._(null, error, null);

}