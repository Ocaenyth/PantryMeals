import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pantry_meals/entities/food.dart';

class OpenFoodFactsService {
  static const String countryCode = "world";
  static const String baseURL = "https://$countryCode.openfoodfacts.org/api/v0";

  static Future<Food> getFoodFromBarcode(String barcode) async {
    final finalURL = "$baseURL/product/$barcode.json";
    http.Response res = await http.get(finalURL);

    return Food.fromJson(json.decode(res.body));
//    TODO: create food object and return it https://flutter.dev/docs/cookbook/networking/fetch-data
  }
}
