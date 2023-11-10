import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product/products.dart';
import '../providers/product/product_provider.dart';

class ProductListWidget extends ConsumerWidget {
  late final ref;
  List<Product>? products;
  late BuildContext context;

  ProductListWidget({required this.products, super.key});

  @override
  Widget build(BuildContext context, ref) {
    this.ref = ref;
    this.context = context;
    return _renderList(products);
  }

  Widget _renderList(List<Product>? products) {
    if (products == null || products.length == 0) {
      return Expanded(
          child: Center(
        child: Text("list is empty"),
      ));
    } else {
      return Column(
          children: List<Widget>.from(
              products!.map((element) => _productItem(element))));
    }
  }

  Widget _productItem(Product product) {
    bool isInCart = ref.watch(productListProvider.notifier).isInCart(product);
    return GestureDetector(
        onTap: () => {
              ref
                  .read(productListProvider.notifier)
                  .goToDetails(context, product)
            },
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
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: isInCart ? Colors.red : Colors.green,
                        borderRadius: BorderRadius.circular(8)),
                    child: GestureDetector(
                      onTap: () => {
                        if (isInCart)
                          {
                            ref
                                .read(productListProvider.notifier)
                                .removeFromCart(product)
                          }
                        else
                          {
                            ref
                                .read(productListProvider.notifier)
                                .addToCart(product)
                          }
                      },
                      child: Text(
                        isInCart ? "remove from cart" : "add to cart",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            )));
  }
}
