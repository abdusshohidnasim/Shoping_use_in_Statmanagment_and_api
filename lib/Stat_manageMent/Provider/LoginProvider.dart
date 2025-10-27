import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginProvider with ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login({required String email, required String password}) async {
    _isLoading = true;
    notifyListeners();

    try {
      final response = await http.post(
        Uri.parse("https://foodsflow.netlify.app/api/auth/login"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"email": email, "password": password}),
      );

      if (response.statusCode == 200) {
        print("Login Success!");
        print(jsonDecode(response.body));
      } else {
        print("Login failed with status: ${response.statusCode}");
      }
    } catch (e) {
      print("Login error: $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
