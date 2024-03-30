import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iot/constants/urls.dart';

Future<void> userLoginApi(String username, String password) async {
  try {
    final url = Uri.parse('$baseUrl/logincheck?username=$username&password=$password');
    final response = await http.get(url);
    print("Response Body: ${response.body}");
    print("Response Status Code: ${response.statusCode}");

    if (response.statusCode == 200) {
      print("success fully done");
      final resp = jsonDecode(response.body);
      // final status = (resp as List).map((e) => OrderHistoryModel.fromJson(e)).toList();
      // return status;
    } else {
      print("else");
      print("Response Status Code: ${response.statusCode}");
      return null;
    }
  } catch (e) {
    print("Catch : ${e.toString()}");
    return null;
  }
}