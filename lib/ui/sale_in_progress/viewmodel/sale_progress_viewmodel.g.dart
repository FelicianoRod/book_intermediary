// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_progress_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$saleProgressHash() => r'4cef8021b33f3ed177d06e47f550ebd947f75bac';

/// See also [saleProgress].
@ProviderFor(saleProgress)
final saleProgressProvider = AutoDisposeProvider<List<SaleProgress>>.internal(
  saleProgress,
  name: r'saleProgressProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$saleProgressHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SaleProgressRef = AutoDisposeProviderRef<List<SaleProgress>>;
String _$bulkSaleViewModelHash() => r'9786c6d6fb2c6010eb60dfbf80d096b782dd8697';

/// See also [bulkSaleViewModel].
@ProviderFor(bulkSaleViewModel)
final bulkSaleViewModelProvider =
    AutoDisposeFutureProvider<List<BulkSale>>.internal(
      bulkSaleViewModel,
      name: r'bulkSaleViewModelProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$bulkSaleViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BulkSaleViewModelRef = AutoDisposeFutureProviderRef<List<BulkSale>>;
String _$idSelectedSaleHash() => r'02f8122e39d81f2c1d72f2a4cdf775acd040b295';

/// See also [IdSelectedSale].
@ProviderFor(IdSelectedSale)
final idSelectedSaleProvider =
    AutoDisposeNotifierProvider<IdSelectedSale, int?>.internal(
      IdSelectedSale.new,
      name: r'idSelectedSaleProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$idSelectedSaleHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$IdSelectedSale = AutoDisposeNotifier<int?>;
String _$singleSaleViewModelHash() =>
    r'ec308a6f1f98b634fb340ecd7ace1d08ca38dd98';

/// See also [SingleSaleViewModel].
@ProviderFor(SingleSaleViewModel)
final singleSaleViewModelProvider =
    AutoDisposeAsyncNotifierProvider<
      SingleSaleViewModel,
      List<SingleSale>
    >.internal(
      SingleSaleViewModel.new,
      name: r'singleSaleViewModelProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$singleSaleViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SingleSaleViewModel = AutoDisposeAsyncNotifier<List<SingleSale>>;
String _$bulkSaleDetailViewModelHash() =>
    r'f72663eff6df3ee14e4786a7cf7c14efc481cbe7';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$BulkSaleDetailViewModel
    extends BuildlessAutoDisposeNotifier<AsyncValue<List<SingleSale>>> {
  late final int idBulkSale;

  AsyncValue<List<SingleSale>> build(int idBulkSale);
}

/// Ejemplo de family con parámetro dinámico
///
/// Copied from [BulkSaleDetailViewModel].
@ProviderFor(BulkSaleDetailViewModel)
const bulkSaleDetailViewModelProvider = BulkSaleDetailViewModelFamily();

/// Ejemplo de family con parámetro dinámico
///
/// Copied from [BulkSaleDetailViewModel].
class BulkSaleDetailViewModelFamily
    extends Family<AsyncValue<List<SingleSale>>> {
  /// Ejemplo de family con parámetro dinámico
  ///
  /// Copied from [BulkSaleDetailViewModel].
  const BulkSaleDetailViewModelFamily();

  /// Ejemplo de family con parámetro dinámico
  ///
  /// Copied from [BulkSaleDetailViewModel].
  BulkSaleDetailViewModelProvider call(int idBulkSale) {
    return BulkSaleDetailViewModelProvider(idBulkSale);
  }

  @override
  BulkSaleDetailViewModelProvider getProviderOverride(
    covariant BulkSaleDetailViewModelProvider provider,
  ) {
    return call(provider.idBulkSale);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bulkSaleDetailViewModelProvider';
}

/// Ejemplo de family con parámetro dinámico
///
/// Copied from [BulkSaleDetailViewModel].
class BulkSaleDetailViewModelProvider
    extends
        AutoDisposeNotifierProviderImpl<
          BulkSaleDetailViewModel,
          AsyncValue<List<SingleSale>>
        > {
  /// Ejemplo de family con parámetro dinámico
  ///
  /// Copied from [BulkSaleDetailViewModel].
  BulkSaleDetailViewModelProvider(int idBulkSale)
    : this._internal(
        () => BulkSaleDetailViewModel()..idBulkSale = idBulkSale,
        from: bulkSaleDetailViewModelProvider,
        name: r'bulkSaleDetailViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$bulkSaleDetailViewModelHash,
        dependencies: BulkSaleDetailViewModelFamily._dependencies,
        allTransitiveDependencies:
            BulkSaleDetailViewModelFamily._allTransitiveDependencies,
        idBulkSale: idBulkSale,
      );

  BulkSaleDetailViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idBulkSale,
  }) : super.internal();

  final int idBulkSale;

  @override
  AsyncValue<List<SingleSale>> runNotifierBuild(
    covariant BulkSaleDetailViewModel notifier,
  ) {
    return notifier.build(idBulkSale);
  }

  @override
  Override overrideWith(BulkSaleDetailViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: BulkSaleDetailViewModelProvider._internal(
        () => create()..idBulkSale = idBulkSale,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idBulkSale: idBulkSale,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<
    BulkSaleDetailViewModel,
    AsyncValue<List<SingleSale>>
  >
  createElement() {
    return _BulkSaleDetailViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BulkSaleDetailViewModelProvider &&
        other.idBulkSale == idBulkSale;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idBulkSale.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BulkSaleDetailViewModelRef
    on AutoDisposeNotifierProviderRef<AsyncValue<List<SingleSale>>> {
  /// The parameter `idBulkSale` of this provider.
  int get idBulkSale;
}

class _BulkSaleDetailViewModelProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          BulkSaleDetailViewModel,
          AsyncValue<List<SingleSale>>
        >
    with BulkSaleDetailViewModelRef {
  _BulkSaleDetailViewModelProviderElement(super.provider);

  @override
  int get idBulkSale => (origin as BulkSaleDetailViewModelProvider).idBulkSale;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
