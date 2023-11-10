// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDateProvider _$ProductDateProviderFromJson(Map<String, dynamic> json) {
  return _ProductDateProvider.fromJson(json);
}

/// @nodoc
mixin _$ProductDateProvider {
  Products? get products => throw _privateConstructorUsedError;
  set products(Products? value) => throw _privateConstructorUsedError;
  List<Product> get cartListProducts => throw _privateConstructorUsedError;
  set cartListProducts(List<Product> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDateProviderCopyWith<ProductDateProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDateProviderCopyWith<$Res> {
  factory $ProductDateProviderCopyWith(
          ProductDateProvider value, $Res Function(ProductDateProvider) then) =
      _$ProductDateProviderCopyWithImpl<$Res, ProductDateProvider>;
  @useResult
  $Res call({Products? products, List<Product> cartListProducts});

  $ProductsCopyWith<$Res>? get products;
}

/// @nodoc
class _$ProductDateProviderCopyWithImpl<$Res, $Val extends ProductDateProvider>
    implements $ProductDateProviderCopyWith<$Res> {
  _$ProductDateProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? cartListProducts = null,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products?,
      cartListProducts: null == cartListProducts
          ? _value.cartListProducts
          : cartListProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $ProductsCopyWith<$Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDateProviderImplCopyWith<$Res>
    implements $ProductDateProviderCopyWith<$Res> {
  factory _$$ProductDateProviderImplCopyWith(_$ProductDateProviderImpl value,
          $Res Function(_$ProductDateProviderImpl) then) =
      __$$ProductDateProviderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Products? products, List<Product> cartListProducts});

  @override
  $ProductsCopyWith<$Res>? get products;
}

/// @nodoc
class __$$ProductDateProviderImplCopyWithImpl<$Res>
    extends _$ProductDateProviderCopyWithImpl<$Res, _$ProductDateProviderImpl>
    implements _$$ProductDateProviderImplCopyWith<$Res> {
  __$$ProductDateProviderImplCopyWithImpl(_$ProductDateProviderImpl _value,
      $Res Function(_$ProductDateProviderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? cartListProducts = null,
  }) {
    return _then(_$ProductDateProviderImpl(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products?,
      cartListProducts: null == cartListProducts
          ? _value.cartListProducts
          : cartListProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDateProviderImpl implements _ProductDateProvider {
  _$ProductDateProviderImpl({this.products, required this.cartListProducts});

  factory _$ProductDateProviderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDateProviderImplFromJson(json);

  @override
  Products? products;
  @override
  List<Product> cartListProducts;

  @override
  String toString() {
    return 'ProductDateProvider(products: $products, cartListProducts: $cartListProducts)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDateProviderImplCopyWith<_$ProductDateProviderImpl> get copyWith =>
      __$$ProductDateProviderImplCopyWithImpl<_$ProductDateProviderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDateProviderImplToJson(
      this,
    );
  }
}

abstract class _ProductDateProvider implements ProductDateProvider {
  factory _ProductDateProvider(
      {Products? products,
      required List<Product> cartListProducts}) = _$ProductDateProviderImpl;

  factory _ProductDateProvider.fromJson(Map<String, dynamic> json) =
      _$ProductDateProviderImpl.fromJson;

  @override
  Products? get products;
  set products(Products? value);
  @override
  List<Product> get cartListProducts;
  set cartListProducts(List<Product> value);
  @override
  @JsonKey(ignore: true)
  _$$ProductDateProviderImplCopyWith<_$ProductDateProviderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
