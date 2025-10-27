import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class SignupProvider with ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> SignupFuntion({
    required String name,
    required String email,
    required String password,
  }) async {
    _isLoading = true;
    notifyListeners();

    try {
      final response = await http.post(
        Uri.parse("https://foodsflow.netlify.app/api/auth/register"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "name": name,
          "email": email,
          "password": password,
        }),
      );

      if (response.statusCode == 201) {
        print("Registration Successful");
        final data = jsonDecode(response.body);
        print(data);
      } else {
        print("Failed: ${response.statusCode}");
      }
    } catch (e) {
      print("catch error $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
