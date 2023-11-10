import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodd/models/product/products.dart';
import 'package:riverpodd/views/general/simple_back_header.dart';

import '../../providers/product/product_provider.dart';

class ProductDetail extends ConsumerStatefulWidget {
  Product product;
  ProductDetail({required this.product, Key? key}) : super(key: key);

  @override
  ConsumerState<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends ConsumerState<ProductDetail> {
  @override
  void initState() {
    super.initState();
  }

  //late bool isInCart;
  @override
  Widget build(BuildContext context) {
    //productsController = ref.watch(productListProvider);

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SimpleBackHeader(title: "DETAILS"),
          _ProductDetails(),
          _addToCartButton()
        ],
      )),
    );
  }

  Widget _ProductDetails() {
    return Expanded(
        child: Column(
      children: [
        _header(),
        _description(),
      ],
    ));
  }

  Widget _description() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Text(
            "description",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Text(widget.product.description)
        ],
      ),
    );
  }

  Widget _header() {
    return Hero(
        tag: "${widget.product.id}",
        child: Image.network(widget.product.thumbnail));
  }

  Widget _addToCartButton() {
    final products = ref.watch(productListProvider);
    bool isInCart =
        ref.read(productListProvider.notifier).isInCart(widget.product);

    return GestureDetector(
      onTap: () => isInCart
          ? ref
              .read(productListProvider.notifier)
              .removeFromCart(widget.product)
          : ref.read(productListProvider.notifier).addToCart(widget.product),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(8),
        child: Text(
          isInCart ? "delete from cart" : "add to cart",
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(color: isInCart ? Colors.red : Colors.green),
      ),
    );
  }
}
