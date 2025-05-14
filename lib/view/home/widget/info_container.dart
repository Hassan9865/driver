import 'package:flutter/material.dart';

Widget infoContainer(String text, double fontSize, {int maxLines = 1}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: Colors.white10,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: fontSize, color: Colors.white),
    ),
  );
}
