import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  String id;
  String name;
  String url;

  User({this.id, this.name, this.url});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'].toString(),
        name: object['first_name'] + " " + object['last_name'],
        url: object['avatar']);
  }

  static Future<User> connectToApi(String id) async {
    String apiUrl = "https://reqres.in/api/users/" + id;

    var apiResult = await http.get(apiUrl);
    var objectApi = json.decode(apiResult.body);

    var userData = (objectApi as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}
