// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDateProviderImpl _$$ProductDateProviderImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDateProviderImpl(
      products: json['products'] == null
          ? null
          : Products.fromJson(json['products'] as Map<String, dynamic>),
      cartListProducts: (json['cartListProducts'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductDateProviderImplToJson(
        _$ProductDateProviderImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'cartListProducts': instance.cartListProducts,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productListHash() => r'08ee2a82eb587296b0de90d0438c8d4c8a4295e6';

/// See also [ProductList].
@ProviderFor(ProductList)
final productListProvider =
    AutoDisposeAsyncNotifierProvider<ProductList, ProductDateProvider>.internal(
  ProductList.new,
  name: r'productListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$productListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProductList = AutoDisposeAsyncNotifier<ProductDateProvider>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
