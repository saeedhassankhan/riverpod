import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodd/providers/product_provider.dart';

import 'model/product/products.dart';

class MainBody extends ConsumerWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Products> products = ref.watch(productsProvider);

    return  switch (products) {
      AsyncData(:final value) => _renderList(value),
      AsyncError() => _errorWidget(),
      _ => _loadingWidget(),
    };
  }


  Widget _errorWidget(){
    return const Center(child : Text('Oops, something unexpected happened'));
  }

  Widget _loadingWidget(){
    return const Center(child: CircularProgressIndicator());
  }

  Widget _renderList(Products products) {
    return SingleChildScrollView(
        child: Column(
            children: List<Widget>.from(
                products.products.map((element) => _productItem(element)))));
  }

  _productItem(Product product) {
    return GestureDetector(
        onTap: () => "",
        child: Container(
            margin: const EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(),
                  width: 64,
                  height: 64,
                  child: Hero(
                      tag: "${product.id}",
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(74),
                          child: Image.network(product.thumbnail))),
                ),
                Expanded(
                  child: Text(product.title),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      //color: isInCart ? Colors.red : Colors.green,
                        borderRadius: BorderRadius.circular(8)),
                    child: GestureDetector(
                      onTap: () =>
                      {}, // isInCart ? storeController.removeFromCart(product) : storeController.addToCartList(product),
                      child: const Text(
                        "", //storeController.isInCart(product) ? tr.remove_from_cart : tr.add_to_cart,
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            )));
  }


}
