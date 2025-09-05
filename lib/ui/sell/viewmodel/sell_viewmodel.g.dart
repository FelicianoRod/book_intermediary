// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customersListHash() => r'889c048ac94744e56b2659eb428d912d4461e94d';

/// See also [customersList].
@ProviderFor(customersList)
final customersListProvider = AutoDisposeProvider<List<Customer>>.internal(
  customersList,
  name: r'customersListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customersListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CustomersListRef = AutoDisposeProviderRef<List<Customer>>;
String _$productsListHash() => r'cc668592dc3a0fc6ed2c4a1212aca55016a13907';

/// See also [productsList].
@ProviderFor(productsList)
final productsListProvider = AutoDisposeProvider<List<Product>>.internal(
  productsList,
  name: r'productsListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProductsListRef = AutoDisposeProviderRef<List<Product>>;
String _$selectedCustomerHash() => r'a81d2280b93ad8c34643a6c836ce9b8d099aea22';

/// See also [SelectedCustomer].
@ProviderFor(SelectedCustomer)
final selectedCustomerProvider =
    NotifierProvider<SelectedCustomer, Customer?>.internal(
      SelectedCustomer.new,
      name: r'selectedCustomerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$selectedCustomerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SelectedCustomer = Notifier<Customer?>;
String _$shoppingCartHash() => r'1c4139a07695188ecbb207d7769106adfb5f5b9a';

/// See also [ShoppingCart].
@ProviderFor(ShoppingCart)
final shoppingCartProvider =
    NotifierProvider<ShoppingCart, List<ProductCart>>.internal(
      ShoppingCart.new,
      name: r'shoppingCartProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$shoppingCartHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ShoppingCart = Notifier<List<ProductCart>>;
String _$advancePaymentHash() => r'392517a048655250bde30c21fbf36fbcc6b96935';

/// See also [AdvancePayment].
@ProviderFor(AdvancePayment)
final advancePaymentProvider =
    AutoDisposeNotifierProvider<AdvancePayment, double?>.internal(
      AdvancePayment.new,
      name: r'advancePaymentProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$advancePaymentHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$AdvancePayment = AutoDisposeNotifier<double?>;
String _$cartPurchaseViewModelHash() =>
    r'cb45f3254ff9616032f01ae1cfc0515dcc445969';

/// See also [CartPurchaseViewModel].
@ProviderFor(CartPurchaseViewModel)
final cartPurchaseViewModelProvider =
    AutoDisposeAsyncNotifierProvider<CartPurchaseViewModel, void>.internal(
      CartPurchaseViewModel.new,
      name: r'cartPurchaseViewModelProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$cartPurchaseViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CartPurchaseViewModel = AutoDisposeAsyncNotifier<void>;
String _$errorListHash() => r'834282cf5d64592441cf1030a7a6ea57fe78e03e';

/// See also [ErrorList].
@ProviderFor(ErrorList)
final errorListProvider =
    AutoDisposeNotifierProvider<ErrorList, List<String>>.internal(
      ErrorList.new,
      name: r'errorListProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$errorListHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ErrorList = AutoDisposeNotifier<List<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
