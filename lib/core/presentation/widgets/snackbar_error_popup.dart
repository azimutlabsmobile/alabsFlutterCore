import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';
import 'package:alabs_flutter_core/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

showSnackBarError(BuildContext context, Failure? error) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Column(
      children: [
        Text(
          error?.title ?? CoreConstants.empty,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        Text(
          error?.message ?? CoreConstants.empty,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    ),
  ));
}
