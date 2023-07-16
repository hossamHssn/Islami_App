import 'dart:convert';

import 'package:eslamimid/model/radio_response.dart';
import 'package:http/http.dart' as http;

class ApiManeger {
  static Future<List<Radios>> getRadios() async {
    Uri Url = Uri.https("api.mp3quran.net", "/radios/radio_arabic.json");
    http.Response Response = await http.get(Url);
    var Data = jsonDecode(utf8.decode(Response.bodyBytes));
    RadioResponse response = RadioResponse.fromJson(Data);
    return response.radios ?? [];
  }
}
