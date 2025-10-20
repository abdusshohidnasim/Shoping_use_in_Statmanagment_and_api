import 'dart:async';

import 'package:flutter/cupertino.dart';
//enum AuthStatus { uninitialized, authenticated, unauthenticated }

class SplachProvider with ChangeNotifier{
  Future<void> get Timer => _Timer();
  bool _isFalse = false;
  bool get isFalse => _isFalse;
  //AuthStatus _status = AuthStatus.uninitialized;

 // AuthStatus get status => _status;

  // AuthProvider() {
  //   _Timer();
  // }
  SplachProvider() {
    _Timer();
  }



  Future<void> _Timer()async{

    await Future.delayed(Duration(seconds: 2));
    //_status = AuthStatus.unauthenticated;
    _isFalse = true;
    notifyListeners();
  }

}