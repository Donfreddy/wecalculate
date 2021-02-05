import 'package:flutter/material.dart';

bool isPortrait(BuildContext ctx) {
  return MediaQuery.of(ctx).orientation == Orientation.portrait;
}

const Color accent = Color(0xFFF96B6A);
