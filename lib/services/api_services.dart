import 'dart:developer';

import 'package:quiz_game_api/constant/urls.dart';
import 'package:quiz_game_api/model/quiz_data.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<Getquiz?> getapi() async {
    try {
      var url = Uri.parse(Api.baseurl);
      var responce = await http.get(url);
      log(responce.body);
      if (responce.statusCode == 200) {
        Getquiz model = getquizFromJson(responce.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
