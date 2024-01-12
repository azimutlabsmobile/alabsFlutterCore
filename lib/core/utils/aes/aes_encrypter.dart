import "dart:convert";
import "dart:math";
import "dart:typed_data";

import "package:pointycastle/api.dart";
import "package:pointycastle/block/aes_fast.dart";
import "package:pointycastle/block/modes/cbc.dart";

class AESEncrypter {
  static String generateSecureKey() {
    final random = Random.secure();
    final bytes = List<int>.generate(32, (i) => random.nextInt(256));
    return bytes.map((byte) => byte.toRadixString(16).padLeft(2, "0")).join();
  }

  static String generateRandomSalt() {
    final random = Random.secure();
    final salt = List<int>.generate(10, (index) => random.nextInt(256));
    return base64Encode(Uint8List.fromList(salt));
  }

  static String encryptAes(String secureKey, String pin, String salt) {
    final key = Uint8List(32); // 256 бит
    key.setAll(0, utf8.encode(pin + salt));
    final iv = Uint8List(16); // 128 бит
    iv.setAll(0, utf8.encode(salt));

    final cipher = CBCBlockCipher(AESFastEngine())
      ..init(
        true,
        ParametersWithIV(KeyParameter(key), iv),
      );
    final data = Uint8List.fromList(utf8.encode(secureKey));
    final paddedData = _padData(data);
    final output = Uint8List(paddedData.length);

    var offset = 0;
    while (offset < paddedData.length) {
      offset += cipher.processBlock(paddedData, offset, output, offset);
    }

    return _bytesToHex(output);
  }

  static String decryptAes(String encryptedSecureKey, String pin, String salt) {
    final key = Uint8List(32); // 256 бит
    key.setAll(0, utf8.encode(pin + salt));
    final iv = Uint8List(16); // 128 бит
    iv.setAll(0, utf8.encode(salt));
    final encryptedData = _hexToBytes(encryptedSecureKey);

    final cipher = CBCBlockCipher(AESFastEngine())
      ..init(
        false,
        ParametersWithIV(KeyParameter(key), iv),
      );
    final output = Uint8List(encryptedData.length);
    var offset = 0;
    while (offset < encryptedData.length) {
      offset += cipher.processBlock(encryptedData, offset, output, offset);
    }
    return utf8.decode(_unpadData(output));
  }

  static Uint8List _padData(Uint8List data) {
    final padLength = 16 - (data.length % 16);
    final paddedData = Uint8List(data.length + padLength);
    paddedData.setAll(0, data);
    paddedData.fillRange(data.length, paddedData.length, padLength);
    return paddedData;
  }

  static Uint8List _unpadData(Uint8List data) {
    final padLength = data.last;
    return Uint8List.view(data.buffer, 0, data.length - padLength);
  }

  static String _bytesToHex(Uint8List bytes) {
    return bytes.map((byte) => byte.toRadixString(16).padLeft(2, "0")).join();
  }

  static Uint8List _hexToBytes(String hex) {
    final list = <int>[];
    for (var i = 0; i < hex.length; i += 2) {
      list.add(int.parse(hex.substring(i, i + 2), radix: 16));
    }
    return Uint8List.fromList(list);
  }
}