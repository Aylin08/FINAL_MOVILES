import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'package:proyectofinal/models/spoon_model.dart';

class SpoonServices extends ChangeNotifier {
  final String _url = "api.calorieninjas.com";
  final String _apiKey = "4sliGPzmrp3eM1pEnTPg9g==T566RS7neBUaJCYv";

  List<Item> propiedad = [];

  SpoonServices() {
    // print("Se conecto bien");
    mostrarInfo();
  }

  Future mostrarInfo() async {
    try {
      var query = "orange milk potato carrots apple";
      var url = Uri.https(_url, '/v1/nutrition', {'query': query});

      final response = await http.get(url, headers: {'X-Api-Key': _apiKey});

      final dieta = Dieta.fromJson(response.body);
      propiedad = dieta.items!;

      //print(response.body);
      notifyListeners();
    } catch (e) {
      /// print(e);
    }
  }
}
