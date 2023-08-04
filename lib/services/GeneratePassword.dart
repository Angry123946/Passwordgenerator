import 'dart:math';
import 'package:flutter/services.dart';
import 'package:first_project/services/CharacterToPassword.dart';

class GeneratePassword {
  int size = 15;
  CharactersToPassword characterslist = new CharactersToPassword();
  String _password = '';
  void Generate() {
    var _random = Random();
    _password = '';

    for (int i = 1; i <= size; i++) {
      _password += characterslist.characters
          .elementAt(_random.nextInt(characterslist.characters.length));

      print(i.toString() + ". " + _password);
    }
  }

  String getPassword() {
    return _password;
  }

  void setSizepassword(int sizeofpassword) {
    size = sizeofpassword;
  }

  void Copy() {
    Clipboard.setData(ClipboardData(text: _password));
  }
}
