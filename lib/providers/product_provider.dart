import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpodd/model/product/products.dart';


part 'product_provider.g.dart';


@riverpod
Future<Products> products(ProductsRef ref) async {
  final response = await http.get(Uri.https('dummyjson.com', '/products'));
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return Products.fromJson(json);
}