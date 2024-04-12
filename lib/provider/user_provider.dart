import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  bool isLogged;

  UserProvider({
    this.isLogged = false,
  });

  void changeLogin({
    required bool newState,
  }) async {
    isLogged = newState;
    notifyListeners();
  }
}
