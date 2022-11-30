import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
class Product {
// persiapan data yang akan di ambil
int albumId;
int id;
String title;
String url;
String thumbnailUrl;
Product({
required this.albumId,
required this.id,
required this.title,
required this.url,
required this.thumbnailUrl,
});
// fungsi factory untuk mengambil data json tiap product
factory Product.fromJson(Map<String, dynamic> object) {
return Product(
albumId: object["albumId"],
id: object["id"],
title: object["title"],
url: object["url"],
thumbnailUrl: object["thumbnailUrl"],
);
}
static Future<List<Product>> connectToApi() async {
String apiUrl = "https://jsonplaceholder.typicode.com/photos";
List<Product> product = [];
// mendapatkan result data setelah koenksi get metohod
var apiResult = await http.get(
Uri.parse(apiUrl),
);
// mendecode hasi dari method get
var jsonObject = json.decode(apiResult.body);
// menambahkan data ke list product
for (var i = 0; i < jsonObject.length; i++) {
product.add(Product.fromJson(jsonObject[i]));
}
// mengembalikan listProdut
return product;
}
}