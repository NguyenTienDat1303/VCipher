import 'dart:math';

import 'package:VCipher/cipher_utils.dart';

class RsaCipher {
  static String encrypt({dynamic input, int p, int q}) {
    if (input is int) {
      var e, d;
      var n = p * q;
      print('n: $n');
      var phi = (p - 1) * (q - 1);
      for (var i = 2; i < phi; i++) {
        if (CipherUtils.gcd(i, phi) == 1) {
          e = i;
          break;
        }
      }
//      e = 377;

      for (var i = 2; i < phi; i++) {
        if ((e * i)%phi == 1) {
          d = i;
          break;
        }
      }

      print('phi: $phi');
      print('e: $e');
      print('d: $d');
      print('Public key: (e = $e;n = $n)');
      print('Private key: (d = $d;n = $n)');
      var y = pow(input, e) % n;
      var x = pow(y,d) %n;
      print('y: $y');
      print('x: $x');
    }
  }
}
