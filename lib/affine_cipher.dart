import 'package:VCipher/cipher_utils.dart';

class AffineCipher {
  static String encrypt(String message, int a, int b) {
    var encrypt = '';
    for (var i = 0; i < message.length; i++) {
      var e = String.fromCharCode(
          ((message[i].codeUnitAt(0) - 65) * a + b) % 26 + 65);
      encrypt += e;
    }
    return encrypt;
  }

  static String decrypt(String cipherText, int a, int b) {
    var inverse = CipherUtils.getInverse(CipherUtils.getZ(26), a);
    print(inverse);

    var encrypt = '';
    for (var i = 0; i < cipherText.length; i++) {
      var e = String.fromCharCode(
          ((cipherText[i].codeUnitAt(0) - 65 - b) * inverse[0]) % 26 + 65);
      encrypt += e;
    }
    return encrypt;
  }
}
