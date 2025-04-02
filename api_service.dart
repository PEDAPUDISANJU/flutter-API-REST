import 'dart:developer';
import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:'..\mani.dart/constants.dart';
import 'package:'..\constants.dart';

class ApiService {
  Future<List<constants.dart>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        return u(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
