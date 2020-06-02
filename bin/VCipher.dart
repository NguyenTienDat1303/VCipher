import 'package:VCipher/VCipher.dart' as VCipher;
import 'package:VCipher/affine_cipher.dart';
import 'package:VCipher/ceasar_cipher.dart';
import 'package:VCipher/cipher_utils.dart';
import 'package:VCipher/elgamal_cipher.dart';
import 'package:VCipher/knapsack_cipher.dart';
import 'package:VCipher/md5_cipher.dart';
import 'package:VCipher/rsa_cipher.dart';
import 'package:VCipher/rsa_signature.dart';
import 'package:VCipher/vigenere_cipher.dart';

void main(List<String> arguments) {
//  var z = CipherUtils.getZ(26);
//  var invertible = CipherUtils.getInvertible(z);
//  var inverse = CipherUtils.getInverse(z, 3);
//  var enc = VigenereCipher.encrypt('thiscryptosystemisnotsecure', 'CIPHER');
//  var dec = VigenereCipher.decrypt(enc, 'CIPHER');
//  var enc = RsaCipher.encrypt(input: 11, p: 3, q: 7);

//  var enc = ElgamalCipher.encrypt(x: 15.0);

  //RSA
//  var enc = RsaSignature.encrypt(x: 98, p: 17, q: 23);
//  var enc2 = RsaSignature.encrypt(x: 111, p: 17, q: 23);
//  var enc3 = RsaSignature.encrypt(x: 109, p: 17, q: 23);
//  print(enc);
//  print(enc2);
//  print(enc3);

//  var de = RsaSignature.decrypt(y: enc, p: 17, q: 23);
//  var de2 = RsaSignature.decrypt(y: enc2, p: 17, q: 23);
//  var de3 = RsaSignature.decrypt(y: enc2, p: 17, q: 23);

//  print(de);
//  print(de2);
//  print(de3);

  //MD5
//  var enc = Md5Cipher.encrypt('The quick brown fox jumps over the lazy eog');
//  print(enc);
var enc = KnapsackCipher.encrypt(x: '01001');
}
