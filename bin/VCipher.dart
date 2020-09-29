import 'package:VCipher/affine_cipher.dart';
import 'package:VCipher/ceasar_cipher.dart';
import 'package:VCipher/cipher_utils.dart';
import 'package:VCipher/rsa_cipher.dart';
import 'package:VCipher/vigenere_cipher.dart';

void main(List<String> arguments) {
  var enc = RsaCipher.encrypt(input: 57, p: 91, q: 19);
  print(AffineCipher.encrypt('SEC', 11,13));
//  print(CeasarCipher.decrypt('ZHYZJVC', 7));
//  print(VigenereCipher.encrypt('bian', 'FIT'));
}
z