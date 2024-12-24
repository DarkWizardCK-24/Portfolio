import 'package:flutter/material.dart';

BoxDecoration kHeaderDecoration = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.blue.shade800,
          Colors.indigo.shade800,         
          Colors.indigo.shade900,
          Colors.blue.shade900,
          Colors.indigo.shade800,         
          Colors.indigo.shade900,
          Colors.purple.shade900,
        ]),
    borderRadius: BorderRadius.circular(20));
//