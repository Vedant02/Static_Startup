import 'dart:convert';

import 'package:http/http.dart';

class Api {
  final URL = "http://192.168.1.5:5000/user";//172.20.10.4

  Future<Map?> fetchData() async {
    try {
      final response = await get(Uri.parse("$URL/trading/data/?apiKey=asdfghjkl"));
      Map jsonData = jsonDecode(response.body);
      return jsonData;
    } catch (err) {
      print("error =======>$err");
    }
    return null;
  }

  Future<Map?> getData() async {
    try {
      final response = await get(Uri.parse("$URL/application/segmentData/"));
      Map jsonData = jsonDecode(response.body);
      print("Get data of all : ============ ${jsonData["NFO"]}");
      return jsonData;
    } catch (err) {
      print("error =======>$err");
    }
    return null;
  }


  Future<bool?> loginApi (Map map1) async{
    try {
      print("login : $map1");
      final response = await post(Uri.parse("${URL}/login"),body: jsonEncode(map1),headers: {"Content-Type": "application/json"});
      // Map map2 = jsonDecode(response.body)as Map<String,dynamic>;
      // // print("login : $map2");

      
      if(response.statusCode == 200)
        {
          return true;
        }

    }
    catch(err) {
      print("error =======>$err");
    }
    return null;
  }

  Future<Map?> PostData (Map map1) async{
    try {
      final response = await post(Uri.parse("${URL}/login"),body: map1);
      Map map2 = jsonDecode(response.body)as Map<String,dynamic>;
      print("login : $map2");
      return map2;
    }
    catch(err) {
      print("error =======>$err");
    }
    return null;
  }
}
//Code for connecting backend with frontend