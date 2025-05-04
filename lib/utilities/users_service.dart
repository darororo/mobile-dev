import 'package:http/http.dart';
import 'dart:convert';

class UsersService {
  static final UsersService _singleton = UsersService._internal();
  UsersService._internal();
  static UsersService get instance => _singleton;

  final String baseUrl = "https://6817396926a599ae7c39aeae.mockapi.io";

  Future<List<dynamic>> getUsers() async {
    Response res = await get(Uri.parse('$baseUrl/users'));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw "Unable to retrieve contacts";
    }
  }

  Future<dynamic> updateUser(String id, Map<String, dynamic> data) async {
    Response res = await patch(Uri.parse('$baseUrl/users/$id'), body: data);
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw "Unable to update contact";
    }
  }

  Future<dynamic> createUser(Map<String, dynamic> data) async {
    Response res = await post(Uri.parse('$baseUrl/users'), body: data);
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw "Unable to create contact";
    }
  }

  Future<dynamic> deleteUser(String id) async {
    Response res = await delete(Uri.parse('$baseUrl/users/$id'));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw "Unable to delete contact";
    }
  }
}
