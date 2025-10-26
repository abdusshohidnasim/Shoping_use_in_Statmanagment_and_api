

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class SignupProvider with ChangeNotifier {
  bool _isLoding= false;
  Future<void> SignupFuntion({
    required String name,
    required String email,
    required String password,
  }) async {
    _isLoding = true;
    notifyListeners();
    try {
      final respons =await http.post(
        Uri.parse("https://foodsflow.netlify.app/api/auth/register"),
          headers: {
            'Content-Type': 'application/json',
          },
        body: jsonEncode({
          "name":name,
          "email":email,
          "password":password

        })
      );
      if(respons.statusCode == 200){
        print("Regestation Sucessfull");
        final data =jsonDecode(respons.body);
        print(data);
      }
    } catch (e) {
      print("catch error $e");
    }finally{
      _isLoding = false;
      notifyListeners();
    }
  }
}
