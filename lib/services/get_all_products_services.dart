import '../Helper/api_helper.dart';
import '../models/data_product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
/*
class AllProductsServices {
  Future<List<DataProductModel>> getAllProducts() async {
    List<dynamic> data = await ApiHelper()
        .get(url: 'http://185.132.55.54:8000/products');
    List<DataProductModel> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(DataProductModel.fromJson(data[i]));
    }
    return productsList;
  }
  */
  class AllProductsServices {
  Future<List<DataProductModel>> getAllProducts() async {
    try {
      List<dynamic> data = await ApiHelper()
          .get(url: 'http://185.132.55.54:8000/products/');
      List<DataProductModel> productsList = [];
      for (var i = 0; i < data.length; i++) {
        productsList.add(DataProductModel.fromJson(data[i]));
      }
      return productsList;
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }
}
  /*
  Future<List<DataProductModel>> fetchProducts() async {
  final response = await http.get(Uri.parse('http://185.132.55.54:8000/products'));
  if (response.statusCode == 200) {
    Iterable productsJson = json.decode(response.body);
    List<DataProductModel> productsList = 
    productsJson.map((productJson) => DataProductModel.fromJson(productJson)).toList();
    return productsList;
  } else {
    throw Exception('Failed to load products');
  }
}
}
*/
/*
Future<List<DataProductModel>> getAllProducts() async {
    List<dynamic> data = await ApiHelper()
        .get(url: 'http://185.132.55.54:8000/products');
    List<DataProductModel> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(DataProductModel.fromJson(data[i]));
    }
    return productsList;
  }
*/

