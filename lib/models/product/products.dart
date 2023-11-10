import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'products.freezed.dart';

part 'products.g.dart';

@unfreezed
class Products with _$Products {
  factory Products({required  List<Product> products}) = _Products;

  factory Products.fromJson (Map<String, Object?> json) =>
      _$ProductsFromJson(json);
}

@freezed
class Product with _$Product {
   factory Product({
    required int id,
    required String title,
    required String description,
    required double price,
    required double discountPercentage,
    required double rating,
    required double stock,
    required String brand,
    required String category,
    required String thumbnail,
    required List<String> images,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
