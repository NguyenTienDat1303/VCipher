class CeasarCipher {
  static String encrypt(String message, int k){
//    var start = 'a'.codeUnits.first;
//    print(start);
//    var end = 'z'.codeUnits.first;
//    var total = end - start + 1;
    const total = 26;

    var encrypt = '';
    for(var i=0; i< message.length;i++){
      var e = String.fromCharCode((message[i].codeUnitAt(0) +k -97) %26 + 97);
      encrypt += e;
    }
    return encrypt;
  }


  static String decrypt(String cipherText, int k){
//    var start = 'a'.codeUnits.first;
//    print(start);
//    var end = 'z'.codeUnits.first;
//    var total = end - start + 1;
    const total = 26;

    var encrypt = '';
    for(var i=0; i< cipherText.length;i++){
      var e = String.fromCharCode((cipherText[i].codeUnitAt(0) -k -65) %26 + 65 );
      encrypt += e;
    }
    return encrypt;
  }
}