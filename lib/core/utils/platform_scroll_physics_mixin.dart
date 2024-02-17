import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

mixin PlatformScrollPhysicsMixin {
  ScrollPhysics? get platformScrollPhysics => kIsWeb
      ? null
      : Platform.isIOS
      ? const BouncingScrollPhysics()
      : const ClampingScrollPhysics();
}