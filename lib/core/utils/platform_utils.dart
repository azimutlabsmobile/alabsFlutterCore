import 'dart:io';

import 'package:alabs_flutter_core/core/utils/extensions/string_ext.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

String versionName = "";

class PlatformUtils {
  static bool get isMobile {
    if (kIsWeb) {
      return false;
    } else {
      return Platform.isIOS || Platform.isAndroid;
    }
  }

  static getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    versionName = packageInfo.version;
  }

  static launchAppInStore({
    required String appStoreId,
    required String playMarketPackage,
}) async {
    if (Platform.isIOS) {
      final url = "https://apps.apple.com/app/id$appStoreId";
      await url.launchURL();
    } else if (Platform.isAndroid) {
      final url = 'https://play.google.com/store/apps/details?id=$playMarketPackage';
      await url.launchURL();
    }
   }
}