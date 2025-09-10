// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_service_supabase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bulkSaleServiceHash() => r'd717df058d6f46e865773a2c20696c285ebb84b4';

/// See also [bulkSaleService].
@ProviderFor(bulkSaleService)
final bulkSaleServiceProvider =
    AutoDisposeFutureProvider<List<BulkSale>>.internal(
      bulkSaleService,
      name: r'bulkSaleServiceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$bulkSaleServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BulkSaleServiceRef = AutoDisposeFutureProviderRef<List<BulkSale>>;
String _$singleSaleServiceHash() => r'375e814af09142f662bbd57fcdc4992d1f41d20a';

/// See also [singleSaleService].
@ProviderFor(singleSaleService)
final singleSaleServiceProvider =
    AutoDisposeFutureProvider<List<SingleSale>>.internal(
      singleSaleService,
      name: r'singleSaleServiceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$singleSaleServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SingleSaleServiceRef = AutoDisposeFutureProviderRef<List<SingleSale>>;
String _$testHash() => r'421777aebe4a24a735584d81fa5bb23080ddaa11';

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

/// See also [test].
@ProviderFor(test)
const testProvider = TestFamily();

/// See also [test].
class TestFamily extends Family<AsyncValue<List<SingleSale>>> {
  /// See also [test].
  const TestFamily();

  /// See also [test].
  TestProvider call(int idBulkSale) {
    return TestProvider(idBulkSale);
  }

  @override
  TestProvider getProviderOverride(covariant TestProvider provider) {
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
  String? get name => r'testProvider';
}

/// See also [test].
class TestProvider extends AutoDisposeFutureProvider<List<SingleSale>> {
  /// See also [test].
  TestProvider(int idBulkSale)
    : this._internal(
        (ref) => test(ref as TestRef, idBulkSale),
        from: testProvider,
        name: r'testProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$testHash,
        dependencies: TestFamily._dependencies,
        allTransitiveDependencies: TestFamily._allTransitiveDependencies,
        idBulkSale: idBulkSale,
      );

  TestProvider._internal(
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
  Override overrideWith(
    FutureOr<List<SingleSale>> Function(TestRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TestProvider._internal(
        (ref) => create(ref as TestRef),
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
  AutoDisposeFutureProviderElement<List<SingleSale>> createElement() {
    return _TestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TestProvider && other.idBulkSale == idBulkSale;
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
mixin TestRef on AutoDisposeFutureProviderRef<List<SingleSale>> {
  /// The parameter `idBulkSale` of this provider.
  int get idBulkSale;
}

class _TestProviderElement
    extends AutoDisposeFutureProviderElement<List<SingleSale>>
    with TestRef {
  _TestProviderElement(super.provider);

  @override
  int get idBulkSale => (origin as TestProvider).idBulkSale;
}

String _$bulkSaleDetailServiceHash() =>
    r'3f45fe2c5085bd6b2429168f483c80f9e40fbaa2';

abstract class _$BulkSaleDetailService
    extends BuildlessAutoDisposeAsyncNotifier<List<SingleSale>> {
  late final int idBulkSale;

  FutureOr<List<SingleSale>> build(int idBulkSale);
}

/// See also [BulkSaleDetailService].
@ProviderFor(BulkSaleDetailService)
const bulkSaleDetailServiceProvider = BulkSaleDetailServiceFamily();

/// See also [BulkSaleDetailService].
class BulkSaleDetailServiceFamily extends Family<AsyncValue<List<SingleSale>>> {
  /// See also [BulkSaleDetailService].
  const BulkSaleDetailServiceFamily();

  /// See also [BulkSaleDetailService].
  BulkSaleDetailServiceProvider call(int idBulkSale) {
    return BulkSaleDetailServiceProvider(idBulkSale);
  }

  @override
  BulkSaleDetailServiceProvider getProviderOverride(
    covariant BulkSaleDetailServiceProvider provider,
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
  String? get name => r'bulkSaleDetailServiceProvider';
}

/// See also [BulkSaleDetailService].
class BulkSaleDetailServiceProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          BulkSaleDetailService,
          List<SingleSale>
        > {
  /// See also [BulkSaleDetailService].
  BulkSaleDetailServiceProvider(int idBulkSale)
    : this._internal(
        () => BulkSaleDetailService()..idBulkSale = idBulkSale,
        from: bulkSaleDetailServiceProvider,
        name: r'bulkSaleDetailServiceProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$bulkSaleDetailServiceHash,
        dependencies: BulkSaleDetailServiceFamily._dependencies,
        allTransitiveDependencies:
            BulkSaleDetailServiceFamily._allTransitiveDependencies,
        idBulkSale: idBulkSale,
      );

  BulkSaleDetailServiceProvider._internal(
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
  FutureOr<List<SingleSale>> runNotifierBuild(
    covariant BulkSaleDetailService notifier,
  ) {
    return notifier.build(idBulkSale);
  }

  @override
  Override overrideWith(BulkSaleDetailService Function() create) {
    return ProviderOverride(
      origin: this,
      override: BulkSaleDetailServiceProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<
    BulkSaleDetailService,
    List<SingleSale>
  >
  createElement() {
    return _BulkSaleDetailServiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BulkSaleDetailServiceProvider &&
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
mixin BulkSaleDetailServiceRef
    on AutoDisposeAsyncNotifierProviderRef<List<SingleSale>> {
  /// The parameter `idBulkSale` of this provider.
  int get idBulkSale;
}

class _BulkSaleDetailServiceProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          BulkSaleDetailService,
          List<SingleSale>
        >
    with BulkSaleDetailServiceRef {
  _BulkSaleDetailServiceProviderElement(super.provider);

  @override
  int get idBulkSale => (origin as BulkSaleDetailServiceProvider).idBulkSale;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
