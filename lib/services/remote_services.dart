// ignore_for_file: missing_return

import 'package:http/http.dart' as http;
import 'package:rest_api_integration/model/model.dart';

class RemoteServices {
  static var client = http.Client();
  static Future<List> fetchProducts() async {
    var response = await client
        .get(Uri.parse('http://makeup-api.herokuapp.com/api/v1/products.json'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {}
  }
}
