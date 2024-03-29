import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/experience.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/skills.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => const MyHome(),
      'about': (context) => const MyAbout(),
      'project': (context) => const MyProject(),
      'experience': (context) => const MyExperience(),
      'skills': (context) => const MySkills()
    },
  ));
}
