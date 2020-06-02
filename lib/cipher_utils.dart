class CipherUtils {
  static List<int> getZ(int z) {
    var zn = <int>[];
    for (var i = 0; i < z; i++) {
      zn.add(i);
    }
    return zn;
  }

  static List<int> getInvertible(List<int> z) {
    var invertible = <int>[];
    for (var i = 0; i < z.length; i++) {
      if (gcd(i, z.length) == 1) {
        invertible.add(i);
      }
    }
    return invertible;
  }

  static List<int> getInverse(List<int> z, int a) {
    var inverse = <int>[];
    for (var i = 0; i < z.length; i++) {
      if ((a * i) % z.length == 1) {
        inverse.add(i);
      }
    }
    return inverse;
  }

  static int gcd(int a, int b) {
    return a.gcd(b);
  }
}
