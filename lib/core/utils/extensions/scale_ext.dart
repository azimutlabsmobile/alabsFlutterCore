import 'package:flutter/material.dart';

extension ScaleExt on num {
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble());

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble());

  EdgeInsets get top => EdgeInsets.only(top: toDouble());

  EdgeInsets get bottom => EdgeInsets.only(bottom: toDouble());

  EdgeInsets get right => EdgeInsets.only(right: toDouble());

  EdgeInsets get left => EdgeInsets.only(left: toDouble());

  EdgeInsets get all => EdgeInsets.all(toDouble());

  SizedBox get verticalBox => SizedBox(height: toDouble());

  SizedBox get horizontalBox => SizedBox(width: toDouble());
}
