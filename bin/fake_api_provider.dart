import 'package:dio/dio.dart';
import 'package:frf/cart_model.dart';

abstract class Paths {
  static const carts = "carts";
}

class Provider {
  final Dio _client = Dio(BaseOptions(baseUrl: "https://fakestoreapi.com/"));
  Future<List<CartModel>> getList() async {
    final resp = await _client.get(Paths.carts);
    final json = resp.data as List<dynamic>;
    final result = json.map((el) => CartModel.fromJson(el)).toList();
    return result;
  }
}