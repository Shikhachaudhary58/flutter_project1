import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePageProvider with ChangeNotifier {
  bool _isLogIn = false;
  bool get isLogIn => _isLogIn;

  void login() {
    _isLogIn = true;
    Fluttertoast.showToast(msg: "Log in successfully");
    notifyListeners();
  }

  void logout() {
    _isLogIn = false;
    Fluttertoast.showToast(msg: "Log out successfully");
    notifyListeners();
  }

}
