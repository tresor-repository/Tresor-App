import 'package:flutter/material.dart';

const mainColor = const Color(0xFF5C868D);
const darkerGrey = const Color(0xBD000000);
const lightGrey = const Color(0xFFF0F0F0);
const darkGrey = const Color(0xFF808080);

const mainPadding = 12.0;
const smallPadding = 8.0;
const tinyPadding = 6.0;

const radius = 4.0;

const TextStyle titleTextStyle = const TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: darkerGrey,
);

const List<BoxShadow> genericShadow = const <BoxShadow> [
  const BoxShadow(
    offset: const Offset(1.0, 1.0),
    color: darkGrey,
    blurRadius: radius,
  ),
];