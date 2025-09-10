// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bulkSaleRepositoryHash() =>
    r'151935572c30f0a115b979327127578fb3c7ce2d';

/// See also [bulkSaleRepository].
@ProviderFor(bulkSaleRepository)
final bulkSaleRepositoryProvider =
    AutoDisposeFutureProvider<List<BulkSale>>.internal(
      bulkSaleRepository,
      name: r'bulkSaleRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$bulkSaleRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BulkSaleRepositoryRef = AutoDisposeFutureProviderRef<List<BulkSale>>;
String _$singleSaleRepositoryHash() =>
    r'f4e9b6b4a767a74670bff092b0ea04e5849a817a';

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

/// See also [singleSaleRepository].
@ProviderFor(singleSaleRepository)
const singleSaleRepositoryProvider = SingleSaleRepositoryFamily();

/// See also [singleSaleRepository].
class SingleSaleRepositoryFamily extends Family<AsyncValue<List<SingleSale>>> {
  /// See also [singleSaleRepository].
  const SingleSaleRepositoryFamily();

  /// See also [singleSaleRepository].
  SingleSaleRepositoryProvider call(int id) {
    return SingleSaleRepositoryProvider(id);
  }

  @override
  SingleSaleRepositoryProvider getProviderOverride(
    covariant SingleSaleRepositoryProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'singleSaleRepositoryProvider';
}

/// See also [singleSaleRepository].
class SingleSaleRepositoryProvider
    extends AutoDisposeFutureProvider<List<SingleSale>> {
  /// See also [singleSaleRepository].
  SingleSaleRepositoryProvider(int id)
    : this._internal(
        (ref) => singleSaleRepository(ref as SingleSaleRepositoryRef, id),
        from: singleSaleRepositoryProvider,
        name: r'singleSaleRepositoryProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$singleSaleRepositoryHash,
        dependencies: SingleSaleRepositoryFamily._dependencies,
        allTransitiveDependencies:
            SingleSaleRepositoryFamily._allTransitiveDependencies,
        id: id,
      );

  SingleSaleRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<List<SingleSale>> Function(SingleSaleRepositoryRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleSaleRepositoryProvider._internal(
        (ref) => create(ref as SingleSaleRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<SingleSale>> createElement() {
    return _SingleSaleRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleSaleRepositoryProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SingleSaleRepositoryRef
    on AutoDisposeFutureProviderRef<List<SingleSale>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SingleSaleRepositoryProviderElement
    extends AutoDisposeFutureProviderElement<List<SingleSale>>
    with SingleSaleRepositoryRef {
  _SingleSaleRepositoryProviderElement(super.provider);

  @override
  int get id => (origin as SingleSaleRepositoryProvider).id;
}

String _$cartPurchaseRepHash() => r'5d60f0e06283e78013c983c67221f1a398a8710a';

/// See also [CartPurchaseRep].
@ProviderFor(CartPurchaseRep)
final cartPurchaseRepProvider =
    AutoDisposeAsyncNotifierProvider<CartPurchaseRep, void>.internal(
      CartPurchaseRep.new,
      name: r'cartPurchaseRepProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$cartPurchaseRepHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CartPurchaseRep = AutoDisposeAsyncNotifier<void>;
String _$bulkSaleDetailRepositoryHash() =>
    r'c3403571e5d3d69461c703b327d97d0875a03a3d';

abstract class _$BulkSaleDetailRepository
    extends BuildlessAutoDisposeNotifier<AsyncValue<List<SingleSale>>> {
  late final int idBulkSale;

  AsyncValue<List<SingleSale>> build(int idBulkSale);
}

/// See also [BulkSaleDetailRepository].
@ProviderFor(BulkSaleDetailRepository)
const bulkSaleDetailRepositoryProvider = BulkSaleDetailRepositoryFamily();

/// See also [BulkSaleDetailRepository].
class BulkSaleDetailRepositoryFamily
    extends Family<AsyncValue<List<SingleSale>>> {
  /// See also [BulkSaleDetailRepository].
  const BulkSaleDetailRepositoryFamily();

  /// See also [BulkSaleDetailRepository].
  BulkSaleDetailRepositoryProvider call(int idBulkSale) {
    return BulkSaleDetailRepositoryProvider(idBulkSale);
  }

  @override
  BulkSaleDetailRepositoryProvider getProviderOverride(
    covariant BulkSaleDetailRepositoryProvider provider,
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
  String? get name => r'bulkSaleDetailRepositoryProvider';
}

/// See also [BulkSaleDetailRepository].
class BulkSaleDetailRepositoryProvider
    extends
        AutoDisposeNotifierProviderImpl<
          BulkSaleDetailRepository,
          AsyncValue<List<SingleSale>>
        > {
  /// See also [BulkSaleDetailRepository].
  BulkSaleDetailRepositoryProvider(int idBulkSale)
    : this._internal(
        () => BulkSaleDetailRepository()..idBulkSale = idBulkSale,
        from: bulkSaleDetailRepositoryProvider,
        name: r'bulkSaleDetailRepositoryProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$bulkSaleDetailRepositoryHash,
        dependencies: BulkSaleDetailRepositoryFamily._dependencies,
        allTransitiveDependencies:
            BulkSaleDetailRepositoryFamily._allTransitiveDependencies,
        idBulkSale: idBulkSale,
      );

  BulkSaleDetailRepositoryProvider._internal(
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
    covariant BulkSaleDetailRepository notifier,
  ) {
    return notifier.build(idBulkSale);
  }

  @override
  Override overrideWith(BulkSaleDetailRepository Function() create) {
    return ProviderOverride(
      origin: this,
      override: BulkSaleDetailRepositoryProvider._internal(
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
    BulkSaleDetailRepository,
    AsyncValue<List<SingleSale>>
  >
  createElement() {
    return _BulkSaleDetailRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BulkSaleDetailRepositoryProvider &&
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
mixin BulkSaleDetailRepositoryRef
    on AutoDisposeNotifierProviderRef<AsyncValue<List<SingleSale>>> {
  /// The parameter `idBulkSale` of this provider.
  int get idBulkSale;
}

class _BulkSaleDetailRepositoryProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          BulkSaleDetailRepository,
          AsyncValue<List<SingleSale>>
        >
    with BulkSaleDetailRepositoryRef {
  _BulkSaleDetailRepositoryProviderElement(super.provider);

  @override
  int get idBulkSale => (origin as BulkSaleDetailRepositoryProvider).idBulkSale;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
