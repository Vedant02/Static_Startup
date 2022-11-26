import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'dart:convert';
import 'dart:async';

class NetworkHandler {


  Map<String, String> requestHeaders =
  {'Content-type': 'application/json',
    'Accept': 'application/json',};

  String baseurl = "http://192.168.1.5:5000/user";
  var log = Logger();

  Future<dynamic> get(String url) async {

    url = formater("/register");

    final response = await http.get(Uri.parse(url));
    log.i(response.body);
    log.i(response.statusCode);
  }

  Future<dynamic> post( Map <String,String> body)
  async {
    String url = formater("/register");

    final response = await http.post(Uri.parse(url),body : jsonEncode(body), headers: requestHeaders);


    if(response.statusCode == 200 || response.statusCode == 201 )
      {
        log.i(response.body);
        return response.body;
      }
   log.i(response.body);
   log.i(response.statusCode);
  }

  Future<bool?> contactDeveloper( Map <String,String> body)
  async {

    String url = formater("/contact_us");

    final response = await http.post(Uri.parse(url),body : jsonEncode(body), headers: requestHeaders);


    if(response.statusCode == 200 || response.statusCode == 201 )
    {
      log.i(response.body);
      return true;
    }
    log.i(response.body);
    log.i(response.statusCode);
    return false;
  }


  Future<bool?> addProject( Map <String,String> body)
  async {

    String url = formater("/addprojects");

    final response = await http.post(Uri.parse(url),body : jsonEncode(body), headers: requestHeaders);


    if(response.statusCode == 200 || response.statusCode == 201 )
    {
      log.i(response.body);
      return true;
    }
    log.i(response.body);
    log.i(response.statusCode);
    return false;
  }

  Future<bool?> addItems( Map <String,String> body)
  async {

    String url = formater("/additems");

    final response = await http.post(Uri.parse(url),body : jsonEncode(body), headers: requestHeaders);


    if(response.statusCode == 200 || response.statusCode == 201 )
    {
      log.i(response.body);
      return true;
    }
    log.i(response.body);
    log.i(response.statusCode);
    return false;
  }

  Future<bool?> editProject( Map <String,String> body)
  async {

    String url = formater("/editprojects");

    final response = await http.post(Uri.parse(url),body : jsonEncode(body), headers: requestHeaders);


    if(response.statusCode == 200 || response.statusCode == 201 )
    {
      log.i(response.body);
      return true;
    }
    log.i(response.body);
    log.i(response.statusCode);
    return false;
  }


  Future<List> listproject()
  async {

    String url = formater("/getprojects");

    final response = await http.get(Uri.parse(url));

    //final response = await http.post(add,body : jsonEncode(""), headers: requestHeaders);

    final List map = jsonDecode(response.body);
   // log.i(map);
    //print("$map ==++++>>");

    if(response.statusCode == 200 || response.statusCode == 201 )
    {
      log.i(response.body);
      return map;
    }
    log.i(response.body);
    return [];
  }

  String formater(String url){
    return baseurl + url;
  }

}



