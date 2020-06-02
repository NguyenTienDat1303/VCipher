import 'dart:math';

import 'package:VCipher/cipher_utils.dart';

class RsaSignature {
  static int encrypt({int x, int p, int q}){
      print('--------Rsa Signature encrypt--------');
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
      print('Khóa ký: (e = $e;n = $n)');
      print('Khóa kiểm thử: (d = $d;n = $n)');
      return pow(x, e) % n;
//      var y = pow(input, e) % n;
//      var x = pow(y,d) %n;
//      print('y: $y');
//      print('x: $x');
  }


  static int decrypt({int y, int p, int q}){
    print('--------Rsa Signature decrypt--------');
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
    print('Khóa ký: (e = $e;n = $n)');
    print('Khóa kiểm thử: (d = $d;n = $n)');
    return pow(y,d) %n;
//      var y = pow(input, e) % n;
//      var x = pow(y,d) %n;
//      print('y: $y');
//      print('x: $x');
  }
}