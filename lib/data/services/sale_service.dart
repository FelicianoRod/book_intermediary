import 'package:objectbox/objectbox.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/models/product_cart_model.dart';
import '../../domain/models/sale_progress.dart';
import '../entities/bulk_sale_entity.dart';
import '../entities/customer_entity.dart';
import '../entities/product_entity.dart';
import '../entities/sale_status_entity.dart';
import '../entities/single_sale_entity.dart';
import '../entities/vendor_entity.dart';
import '../providers/objectbox_provider.dart';

part 'sale_service.g.dart';

@riverpod
Future<List<BulkSaleEntity>?> getSales(GetSalesRef ref) async {
  final store = await ref.watch(storeObjectboxProvider.future);
  final bulkSaleBox = store.box<BulkSaleEntity>();

  final bulkSaleList = bulkSaleBox.getAll();

  return bulkSaleList;
}

@riverpod
class SaleService extends _$SaleService {
  late final Box<BulkSaleEntity> _bulkSale;

  @override
  FutureOr<List<BulkSaleEntity>> build() async {
    return [];
  }

  Future<List<BulkSaleEntity>> getSales() async {
    try {
      final store = await ref.watch(storeObjectboxProvider.future);
      _bulkSale = store.box<BulkSaleEntity>();
      final saleList = _bulkSale.getAll();
      return saleList;
    } catch (e) {
      return [];
    }
  }

  // Future<bool> sellShoppingCartSer(
  //     int vendorId,
  //     int customerId,
  //     double paid,
  //     List<ItemPurchasedIds> items,
  //     ) async {
  //   try {
  //     final store = await ref.watch(storeObjectboxProvider.future);
  //
  //     // Obtenemos las cajas
  //     final vendorBox = store.box<VendorEntity>();
  //     final customerBox = store.box<CustomerEntity>();
  //     final productBox = store.box<ProductEntity>();
  //     final saleStatusBox = store.box<SaleStatusEntity>();
  //     final bulkSaleBox = store.box<BulkSaleEntity>();
  //     final singleSaleBox = store.box<SingleSaleEntity>();
  //
  //     // Recuperamos los objetos relacionados
  //     final vendor = vendorBox.get(vendorId);
  //     final customer = customerBox.get(customerId);
  //     final initialStatus = saleStatusBox.get(1);
  //
  //     if (vendor == null || customer == null || initialStatus == null) {
  //       return false;
  //     }
  //
  //     // Creamos venta por lotes
  //     final bulkSale = BulkSaleEntity(paid: paid)
  //       ..customer.target = customer
  //       ..vendor.target = vendor
  //       ..status.target = initialStatus;
  //
  //     // Creamos ventas unitarias
  //     items.map((item) {
  //       final singleSale = SingleSaleEntity(
  //         amount: item.amount,
  //       )
  //         ..bulkSale.target = bulkSale
  //         ..product.target = productBox.get(item.productId);
  //
  //       singleSaleBox.put(singleSale);
  //     });
  //
  //     return true;
  //   } catch (e) {
  //     return false;
  //   }
  // }
}

@riverpod
class CartPurchaseSer extends _$CartPurchaseSer {
  @override
  FutureOr<void> build() {

  }

  Future<void> cartPurchase(
      int vendorId,
      int customerId,
      double paid,
      List<ProductCart> items,
      ) async {
    final store = await ref.watch(storeObjectboxProvider.future);

    // Obtenemos las cajas
    final vendorBox = store.box<VendorEntity>();
    final customerBox = store.box<CustomerEntity>();
    final productBox = store.box<ProductEntity>();
    final saleStatusBox = store.box<SaleStatusEntity>();
    final bulkSaleBox = store.box<BulkSaleEntity>();
    final singleSaleBox = store.box<SingleSaleEntity>();

    // Recuperamos los objetos relacionados
    final vendor = vendorBox.get(vendorId);
    final customer = customerBox.get(customerId);
    final initialStatus = saleStatusBox.get(1);

    // if (vendor == null || customer == null || initialStatus == null) {
    //   return false;
    // }

    // Creamos venta por lotes
    final bulkSale = BulkSaleEntity(paid: paid)
      ..customer.target = customer
      ..vendor.target = vendor
      ..status.target = initialStatus;

    // Creamos ventas unitarias
    items.map((item) {
      final singleSale = SingleSaleEntity(
        amount: item.amount,
      )
        ..bulkSale.target = bulkSale
        ..product.target = productBox.get(item.product.id);

      singleSaleBox.put(singleSale);
    });

  }
}

// // Price of a book
// @riverpod
// Future<ProductEntity> priceBook(PriceBookRef ref, int id) async {
//   final store = await ref.watch(storeObjectboxProvider.future);
//   final productsBox = store.box<ProductEntity>();
//   final product = productsBox.get(id);
//   return product!;
// }