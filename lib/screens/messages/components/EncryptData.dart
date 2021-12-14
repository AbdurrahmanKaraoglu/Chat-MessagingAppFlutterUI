import 'package:encrypt/encrypt.dart' as encrypt;

class EncryptData {
//for AES Algorithms

  static final key = encrypt.Key.fromLength(32);
  static final iv = encrypt.IV.fromLength(16);

  static final encrypter = encrypt.Encrypter(encrypt.AES(key));

  static encryptAES(plainText) {
    final encrypted = encrypter.encrypt(plainText, iv: iv);
    // print(encrypted.bytes);
    // print(encrypted.base16);
    // print(encrypted.base64);
    return encrypted;
  }

  static decryptAES(plainText) {
    final decrypted = encrypter.decrypt(plainText, iv: iv);
    // print(decrypted);
    return decrypted;
  }
}
