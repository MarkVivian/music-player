import 'package:flutter/material.dart';

class InputManager {

  static final InputManager sameInstance = InputManager.internal();

  // this ensures that only the same instance is used when the class is called.
  factory InputManager() {
    return sameInstance;
  }

  InputManager.internal();

  String userInput = "";

  void updateInput(String input) {
    sameInstance.userInput = input;
  }
}
