import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier{

  bool isOn = false;
  void toggleTheme(){
    isOn = !isOn;
    notifyListeners();
    //this.isOn = !this.isOn;
  }
}