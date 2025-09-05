// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:objectbox/objectbox.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as p;
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import '../../entities/customer_entity.dart';
// import '../../entities/bulk_sale_entity.dart';
// import '../../entities/product_entity.dart';
// import '../../entities/sale_status_entity.dart';
// import '../../entities/single_sale_entity.dart';
// import '../../entities/supplier_entity.dart';
// import '../../entities/account_payable.dart';
// import '../../entities/supplier_status_entity.dart';
// import '../../entities/vendor_entity.dart';
// import 'objectbox.g.dart';
//
// // import 'db/objectbox.g.dart';
// // part 'db/objectbox.g.dart';
// // part 'objectbox.g.dart';
// //
// class ObjectBox {
//   static ObjectBox? _instance;
//   late final Store store;
//   Admin? _admin;
//
//   late final Box<ProductEntity> _products;
//   late final Box<CustomerEntity> _customers;
//   late final Box<SupplierEntity> _supplier;
//   late final Box<VendorEntity> _vendors;
//   // late final Box<SaleEntity> _sale;
//   // late final Box<DetailsSaleEntity> _detailsSale;
//   // late final Box<SupplierPaymentEntity> _supplierPayment;
//   // late final Box<OrderEntity> _orders;
//   late final Box<SingleSaleEntity> _singleSale;
//   late final Box<BulkSaleEntity> _bulkSale;
//
//   late final Box<SaleStatusEntity> _saleStatusBox;
//   late final Box<SupplierStatusEntity> _supplierStatusBox;
//
//   ObjectBox._create(this.store) {
//     _products = Box<ProductEntity>(store);
//     _supplier = Box<SupplierEntity>(store);
//     _customers = Box<CustomerEntity>(store);
//     // _orders = Box<OrderEntity>(store);
//     _singleSale = Box<SingleSaleEntity>(store);
//     _bulkSale = Box<BulkSaleEntity>(store);
//
//     _saleStatusBox = Box<SaleStatusEntity>(store);
//     _supplierStatusBox = Box<SupplierStatusEntity>(store);
//
//
//
//     // if (Admin.isAvailable()) {
//     //   _admin = Admin(store);
//     //   print("✅");
//     // } else {
//     //   print("⚠️ ObjectBox Admin no está disponible en este entorno");
//     // }
//
//     insertData();
//   }
//
//   // static Future<ObjectBox> create() async {
//   //   final dir = await getApplicationDocumentsDirectory();
//   //   final store = await openStore(directory: p.join(dir.path, "plenitud"));
//   //   return ObjectBox._create(store);
//   // }
//
//   static Future<ObjectBox> getInstanceOrCreate() async {
//     if (_instance == null) {
//       final docsDir = await getApplicationDocumentsDirectory();
//       final store = await openStore(directory: p.join(docsDir.path, "plenitud"));
//       _instance = ObjectBox._create(store);
//     }
//     return _instance!;
//   }
//
//   void close() {
//     _admin?.close();
//     store.close();
//   }
//
//   void insertData() {
//     // Products
//     if (_products.isEmpty()) {
//       final initialProducts = [
//         ProductEntity(
//           code: 22,
//           title: "Bitácora de Juntas",
//           category: "Para la comunidad",
//           donation: 96.00,
//         ),
//         ProductEntity(
//           code: 24,
//           title: "Libro de Actas",
//           category: "Para la comunidad",
//           donation: 172.00,
//         ),
//         ProductEntity(
//           code: 40,
//           title: "Carpeta CCCP - Plenitud AA",
//           category: "Para la comunidad",
//           donation: 249.00,
//         ),
//         ProductEntity(
//           code: 28,
//           title: "Lenguaje del Corazón",
//           category: "Libros",
//           donation: 162,
//         ),
//         ProductEntity(
//           code: 35,
//           title: "Folleto Lo mejor de Bill W",
//           category: "Libros",
//           donation: 35.00,
//         ),
//       ];
//       _products.putManyAsync(initialProducts);
//     }
//     // Proveedores
//     if (_supplier.isEmpty()) {
//       final initialSuppliers = [
//         SupplierEntity(
//           name: "Plenitud AA",
//         ),
//         SupplierEntity(
//           name: "Literatura"
//         ),
//       ];
//       _supplier.putManyAsync(initialSuppliers);
//     }
//
//     // Customer
//     if (_customers.isEmpty()) {
//
//         final sobriedad = CustomerEntity(
//           name: "En Busca de Sobriedad",
//         );
//       _customers.put(sobriedad);
//     }
//
//     final feliciano = VendorEntity(
//       name: "Feliciano Rodríguez López",
//       username: "felix",
//       password: "12345678"
//     );
//
//     _vendors.put(feliciano);
//   }
//
//   // Products
//   List<ProductEntity> getAllProducts() => _products.getAll();
//
//   ProductEntity? getProduct(int id) => _products.get(id);
//
//   VendorEntity? getVendor(int id) => _vendors.get(id);
//
//   CustomerEntity? getCustomer(int id) => _customers.get(id);
//
//   // Realizar una compra
//   Future<bool> saleCustomer(
//     int vendorId,
//     int customerId,
//     double paid,
//     List<int> amount,
//     List<int> productsId,
//     int statusId,
//     // List<SingleSaleEntity> singleSaleEntityList,
//   ) async {
//     try {
//       final vendor = _vendors.get(vendorId);
//       final customer = _customers.get(customerId);
//       final status = _saleStatusBox.get(statusId);
//
//       final bulkSale = BulkSaleEntity(
//           paid: paid
//       );
//       // cliente
//       bulkSale.customer.target = customer;
//       // Vendedor
//       bulkSale.vendor.target = vendor;
//       // status
//       bulkSale.status.target = status;
//       // Insert
//       _bulkSale.put(bulkSale);
//
//       // Una vez guardado bulkSale y con un id
//       final singleSaleList = amount.map((item) {
//         var index = 0;
//
//         final singleSale = SingleSaleEntity(
//           amount: item,
//         );
//         // SingleSale
//         singleSale.bulkSale.target = bulkSale;
//         // Product
//         final product = _products.get(productsId[index]);
//         singleSale.product.target = product;
//         index++;
//
//         return singleSale;
//       }).toList();
//
//       _singleSale.putMany(singleSaleList);
//       return true;
//
//     } catch (e) {
//       return false;
//     }
//   }
// }

// @riverpod
// Future<Store> objectbox(ObjectboxRef ref) async {
//   final dir = await getApplicationDocumentsDirectory();
//   final store = await openStore(directory: p.join(dir.path, "plenitud"));
//   await seedDatabase(store);
//   ref.onDispose(() => store.close());
//   return store;
// }
//
// @riverpod
// Future<List<ProductEntity>> getAllProduct(GetAllProductRef ref) async {
//   final store = ref.watch(objectboxProvider);
//   final productsBox = store.box<ProductEntity>();
//   final productsList = productsBox.getAll();
//   return productsList;
// }
//
//
// Future<void> seedDatabase(Store store) async {
//   final productsBox = store.box<ProductEntity>();
//   final supplierBox = store.box<SupplierEntity>();
//   final customerBox = store.box<CustomerEntity>();
//   final vendorsBox = store.box<VendorEntity>();
//
//     // Products
//     if (productsBox.isEmpty()) {
//       final initialProducts = [
//         ProductEntity(
//           code: 22,
//           title: "Bitácora de Juntas",
//           category: "Para la comunidad",
//           donation: 96.00,
//         ),
//         ProductEntity(
//           code: 24,
//           title: "Libro de Actas",
//           category: "Para la comunidad",
//           donation: 172.00,
//         ),
//         ProductEntity(
//           code: 40,
//           title: "Carpeta CCCP - Plenitud AA",
//           category: "Para la comunidad",
//           donation: 249.00,
//         ),
//         ProductEntity(
//           code: 28,
//           title: "Lenguaje del Corazón",
//           category: "Libros",
//           donation: 162,
//         ),
//         ProductEntity(
//           code: 35,
//           title: "Folleto Lo mejor de Bill W",
//           category: "Libros",
//           donation: 35.00,
//         ),
//       ];
//       productsBox.putManyAsync(initialProducts);
//     }
//
//     // Supplier
//     if (supplierBox.isEmpty()) {
//       final initialSuppliers = [
//         SupplierEntity(
//           name: "Plenitud AA",
//         ),
//         SupplierEntity(
//           name: "Literatura"
//         ),
//       ];
//       supplierBox.putManyAsync(initialSuppliers);
//     }
//
//     // Customer
//     if (customerBox.isEmpty()) {
//
//         final sobriedad = CustomerEntity(
//           name: "En Busca de Sobriedad",
//         );
//       customerBox.put(sobriedad);
//     }
//
//     // Vendor
//     if (vendorsBox.isEmpty()) {
//       final feliciano = VendorEntity(
//         name: "Feliciano Rodríguez López",
//         username: "felix",
//         password: "12345678"
//       );
//
//       vendorsBox.put(feliciano);
//     }
// }