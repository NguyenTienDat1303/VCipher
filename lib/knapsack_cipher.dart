class KnapsackCipher {
  static int encrypt({String x}) {
    var omega = 46;
    var m = 53;
    var a = <int>[2,3,6,12,25];
    var aa = <int>[];
    for(var i=0;i<a.length;i++){
      aa.add(a[i]*omega%m);
    }
    print('Khóa bí mật: ($aa , $m, $omega)');
    var t = 0;
    for(int i=0;i<x.length;i++){
      t+= int.parse(x[i]) * aa[i];
    }
    print('Mã hóa ${t%m}' );
  }
}
