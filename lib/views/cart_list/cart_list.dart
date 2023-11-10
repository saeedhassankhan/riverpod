import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodd/views/general/simple_back_header.dart';

import '../../providers/product/product_provider.dart';
import '../product_list_widget.dart';

class CartList extends ConsumerStatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  ConsumerState<CartList> createState() => _CartListState();
}

class _CartListState extends ConsumerState<CartList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SimpleBackHeader(title: "CHECK OUT"),
        SingleChildScrollView(
          child: _renderItems(),
        )
      ],
    ));
  }

  _renderItems() {
    final products = ref.watch(productListProvider);

    return switch (products) {
      AsyncData(:final value) =>
        Flexible(child: ProductListWidget(products: value.cartListProducts)),
      _ => const Center(child: Text("list is empty")),
    };
  }
}
