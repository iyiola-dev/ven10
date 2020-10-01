import 'dart:convert';

import 'package:Iyiola/core/models/carModel.dart';
import 'package:http/http.dart' as http;

class CarApi {
  Future<CarModel> getCarModel() async {
    try {
      var response = await http.get('https://ven10.co/assessment/filter.json');
      var data = CarModel.fromJson(json.decode(response.body));
      print(data);
      if (data.colors != null) {
        return data;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
