import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodd/providers/product/product_provider.dart';
import 'package:riverpodd/views/product_list_widget.dart';

import '../../models/product/products.dart';

class MainBody extends ConsumerStatefulWidget {
  const MainBody({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExampleState();
}

class _ExampleState extends ConsumerState<MainBody> {
  // The pending addTodo operation. Or null if none is pending.
  @override
  Widget build(BuildContext context) {
    final products = ref.watch(productListProvider);

    return Column(
      children: [
        _selectedItemInCartStatus(),
        _productItems(products),
      ],
    );
  }

  Widget _productItems(final products) {
    return switch (products) {
      AsyncData(:final value) => Expanded(
          child: SingleChildScrollView(
              child: ProductListWidget(products: value?.products?.products))),
      AsyncError() => _errorWidget(),
      _ => _loadingWidget(),
    };
  }

  Widget _errorWidget() {
    return const Center(child: Text('Oops, something unexpected happened'));
  }

  Widget _loadingWidget() {
    return const Expanded(child: Center(child: CircularProgressIndicator()));
  }

  Widget _selectedItemInCartStatus() {
    AsyncValue<ProductDateProvider> products = ref.watch(productListProvider);

    if(products is AsyncData){
      return Container(
        decoration: const BoxDecoration(color: Colors.blueGrey),
        padding: const EdgeInsets.all(8),
        child: GestureDetector(
            onTap: () =>
            {ref.read(productListProvider.notifier).goToCartList(context)},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.shopify,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    "selected items : ${products.value != null ? products.value?.cartListProducts.length : 0}")
              ],
            )),
      );
    }

    return const SizedBox();
  }
}
