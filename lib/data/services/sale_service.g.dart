// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSalesHash() => r'978989b6cfd74dcf5b5478c833d01eedf0a49e82';

/// See also [getSales].
@ProviderFor(getSales)
final getSalesProvider =
    AutoDisposeFutureProvider<List<BulkSaleEntity>?>.internal(
      getSales,
      name: r'getSalesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$getSalesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetSalesRef = AutoDisposeFutureProviderRef<List<BulkSaleEntity>?>;
String _$saleServiceHash() => r'660543ae3cc7deb6098bb20b6231717c39c38109';

/// See also [SaleService].
@ProviderFor(SaleService)
final saleServiceProvider =
    AutoDisposeAsyncNotifierProvider<
      SaleService,
      List<BulkSaleEntity>
    >.internal(
      SaleService.new,
      name: r'saleServiceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$saleServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SaleService = AutoDisposeAsyncNotifier<List<BulkSaleEntity>>;
String _$cartPurchaseSerHash() => r'0bf69b3695a32ad67324272a787ff397a3da0d00';

/// See also [CartPurchaseSer].
@ProviderFor(CartPurchaseSer)
final cartPurchaseSerProvider =
    AutoDisposeAsyncNotifierProvider<CartPurchaseSer, void>.internal(
      CartPurchaseSer.new,
      name: r'cartPurchaseSerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$cartPurchaseSerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CartPurchaseSer = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
