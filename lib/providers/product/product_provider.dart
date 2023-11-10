import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpodd/models/product/products.dart';
import 'package:riverpodd/views/cart_list/cart_list.dart';
import 'package:riverpodd/views/product_detail/product_detail_widget.dart';

import '../../env.dart';

part 'product_provider.g.dart';
part 'product_provider.freezed.dart';


@unfreezed
class ProductDateProvider with _$ProductDateProvider {
  factory ProductDateProvider({ Products? products ,  required List<Product> cartListProducts}) = _ProductDateProvider;
  factory ProductDateProvider.fromJson(Map<String, Object?> json) =>
      _$ProductDateProviderFromJson(json);
}


@riverpod
class ProductList extends _$ProductList {

  @override
  Future<ProductDateProvider> build() async {

    Response result = await http.get(Uri.parse(Env.PRODUCT_LIST_URL));
    var body = result.body;

    final productDataProvider = ProductDateProvider(
      products: Products.fromJson(jsonDecode(body)), cartListProducts: []
    );

    return productDataProvider;

  }

  addToCart(Product product) async{
    final products = await future;
    products.cartListProducts.add(product);
    state = AsyncData(products);
    ref.notifyListeners();

  }

  removeFromCart(Product product) async{
    final products = await future;
    products.cartListProducts = products.cartListProducts.where((tProduct) => (product.id != tProduct.id)).toList();
    state = AsyncData(products);
    ref.notifyListeners();


  }

  bool isInCart(Product product){
    return state.value?.cartListProducts?.contains(product) ?? false;
  }

  goToDetails(BuildContext context , Product product){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductDetail(product: product)));
  }


  goToCartList(BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CartList()));
  }

}
