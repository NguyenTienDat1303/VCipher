import 'dart:convert';

import 'package:crypto/crypto.dart';

class Md5Cipher {
  static encrypt(String plainText){
    return md5.convert(utf8.encode(plainText)).toString();
  }
}