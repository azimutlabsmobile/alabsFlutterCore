import 'dart:io';

import 'package:path_provider/path_provider.dart';

Future<String> getSavePath() async {
  Directory? directory;
  try {
    if (Platform.isIOS) {
      directory = await getApplicationDocumentsDirectory();
    } else {
      directory = Directory('/storage/emulated/0/Download');
      if (!await directory.exists()) {
        directory = await getExternalStorageDirectory();
      }
    }
  } catch (err) {
    print("Cannot get download folder path");
  }
  return directory?.path ?? '';
}

