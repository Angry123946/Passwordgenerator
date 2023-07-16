import 'dart:math';
import 'package:flutter/services.dart';

int size = 15;

class GeneratePassword {
  List<String> characters = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n'
        'o',
    'p',
    'r',
    's'
        't'
        'w'
        'y'
        'x'
        'z'
        'q'
  ];
  String password = '';
  void Generate() {
    var random = Random();
    password = '';

    for (int i = 0; i <= size; i++) {
      password += characters.elementAt(random.nextInt(characters.length));
    }
  }

  String getPassword() {
    return password;
  }

  void setSizepassword(int sizeofpassword) {
    size = sizeofpassword;
  }

  void Copy() {
    Clipboard.setData(ClipboardData(text: password));
  }
}
