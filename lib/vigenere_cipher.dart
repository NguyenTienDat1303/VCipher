class VigenereCipher {
  static String encrypt(String message, String key) {
    var keyInt = <int>[];
    for (var i = 0; i < key.length; i++) {
      keyInt.add(key[i].codeUnitAt(0) - 65);
    }
    var cipherText = '';
    var count = 0;
    for (var i = 0; i < message.length; i++) {
      var k = keyInt[count];
      var x = message[i].codeUnitAt(0);
      cipherText += String.fromCharCode((x + k - 97) % 26 + 97);
      count < keyInt.length - 1 ? count++ : count = 0;
    }

    return cipherText;
  }

  static String decrypt(String cipherText, String key) {
    var keyInt = <int>[];
    for (var i = 0; i < key.length; i++) {
      keyInt.add(key[i].codeUnitAt(0) - 65);
    }
    var message = '';
    var count = 0;
    for (var i = 0; i < cipherText.length; i++) {
      var k = keyInt[count];
      var x = cipherText[i].codeUnitAt(0);
      message += String.fromCharCode((x - k - 97) % 26 + 97);
      count < keyInt.length - 1 ? count++ : count = 0;
    }
    return message;
  }
}
