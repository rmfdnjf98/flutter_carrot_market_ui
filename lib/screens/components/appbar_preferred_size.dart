import 'package:flutter/material.dart';

PreferredSize appBarBottomLine() {
  const height = 0.5;
  return PreferredSize(
    preferredSize: const Size.fromHeight(height),
    child: Container(
      color: Colors.grey,
      height: height,
    ),
  );
}
