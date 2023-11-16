import 'package:dio/dio.dart';
import 'package:sportify/models/user.dart';

class APIServices {
  static Future<List<userlist>> fetchUser() async{
    Response  response = await Dio().get("https://reqres.in/api/users");
    List<userlist> users = 
      (response.data['data'] as List).map((v) => userlist.fromJson(v)).toList();
    return users;
  }
}