import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../entities/bulk_sale_entity.dart';
import '../entities/customer_entity.dart';
import '../entities/product_entity.dart';
import '../entities/sale_status_entity.dart';
import '../entities/single_sale_entity.dart';
import '../entities/supplier_entity.dart';
import '../entities/supplier_status_entity.dart';
import '../entities/vendor_entity.dart';
import '../services/objectbox/objectbox.g.dart';

part 'objectbox_provider.g.dart';

@riverpod
Future<Store> storeObjectbox(StoreObjectboxRef ref) async {
  final dir = await getApplicationDocumentsDirectory();
  final store = await openStore(directory: p.join(dir.path, "plenitud"));
  await seedDatabase(store);
  ref.onDispose(() => store.close());
  return store;
}

Future<void> seedDatabase(Store store) async {
  final productsBox = store.box<ProductEntity>();
  final supplierBox = store.box<SupplierEntity>();
  final customerBox = store.box<CustomerEntity>();
  final vendorsBox = store.box<VendorEntity>();
  final saleStatusBox = store.box<SaleStatusEntity>();
  final supplierStatusBox = store.box<SupplierStatusEntity>();

    // Products
    if (productsBox.isEmpty()) {
      final initialProducts = [
        ProductEntity(
          code: 22,
          title: "Bitácora de Juntas",
          category: "Para la comunidad",
          donation: 96.00,
        ),
        ProductEntity(
          code: 24,
          title: "Libro de Actas",
          category: "Para la comunidad",
          donation: 172.00,
        ),
        ProductEntity(
          code: 40,
          title: "Carpeta CCCP - Plenitud AA",
          category: "Para la comunidad",
          donation: 249.00,
        ),
        ProductEntity(
          code: 28,
          title: "Lenguaje del Corazón",
          category: "Libros",
          donation: 162,
        ),
        ProductEntity(
          code: 35,
          title: "Folleto Lo mejor de Bill W",
          category: "Libros",
          donation: 35.00,
        ),
      ];
      productsBox.putManyAsync(initialProducts);
    }

    // Supplier
    if (supplierBox.isEmpty()) {
      final initialSuppliers = [
        SupplierEntity(
          name: "Plenitud AA",
        ),
        SupplierEntity(
          name: "Literatura"
        ),
      ];
      supplierBox.putManyAsync(initialSuppliers);
    }

    // Customer
    if (customerBox.isEmpty()) {
      final initialCustomers = [
        CustomerEntity(
          name: "En Busca de Sobriedad",
        ),
        CustomerEntity(
          name: "Feliciano",
        ),
      ];

      customerBox.putManyAsync(initialCustomers);
    }

    // Vendor
    if (vendorsBox.isEmpty()) {
      final feliciano = VendorEntity(
        name: "Feliciano Rodríguez López",
        username: "felix",
        password: "12345678"
      );

      vendorsBox.put(feliciano);
    }

    // Initial States
  if (saleStatusBox.isEmpty()) {
    final saleStatus = [
      SaleStatusEntity(
        description: "Requested",
      ),
      SaleStatusEntity(
        description: "Supplier",
      ),
      SaleStatusEntity(
        description: "Delivered",
      ),
    ];

    saleStatusBox.putManyAsync(saleStatus);
  }

  if (supplierStatusBox.isEmpty()) {
    final supplierStatus = [
      SupplierStatusEntity(
        description: "Requested",
      ),
      SupplierStatusEntity(
        description: "Delivery",
      ),
    ];

    supplierStatusBox.putManyAsync(supplierStatus);
  }
}