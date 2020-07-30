import 'package:http/http.dart' as http;

class OpenFoodFactsService {
  static const String countryCode = "world";
  static const String baseURL = "https://$countryCode.openfoodfacts.org/api/v0";

  static void getFoodFromBarcode(String barcode) async {
    final finalURL = "$baseURL/product/$barcode.json";
    http.Response res = await http.get(finalURL);
//    TODO: create food object and return it https://flutter.dev/docs/cookbook/networking/fetch-data
  }
}
