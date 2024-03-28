import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  myPro(lang, title, desc, star, level, link) {
    return Container(
      height: 240,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 10, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    lang,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Expanded(child: Container()),
                  const Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    star,
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                desc,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  const Text(
                    'Difficulty :',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    level,
                    style: const TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {
                      link;
                    },
                    icon: const Icon(FontAwesomeIcons.github),
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff252525),
        title: const Text(
          'Projects',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myPro(
                  'FLUTTER',
                  'Theme Widget',
                  'A widget design on flutter that enables dark and light theme in android devices using toggle ',
                  '7',
                  'Easy',
                  'https://github.com/DarkWizardCK-24/Theme'),
              myPro(
                  'PYTHON',
                  'Airline System',
                  'GUI interface using tkinter in python and connecting to MySQL using Python-MySQL connectivity',
                  '8',
                  'Easy',
                  'https://github.com/DarkWizardCK-24/Airport-Management-System'),
              myPro(
                  'PYTHON',
                  'Time-4-Sale',
                  'Ecommerce webapp using Python-Django',
                  '5',
                  'Hard',
                  'https://github.com/DarkWizardCK-24/Time-4-Sale'),
              myPro(
                  'REACT-JS',
                  'To-Do App',
                  'To-Do web app built using React js with simple functionality',
                  '7',
                  'Moderate',
                  'https://github.com/DarkWizardCK-24/To-Do-WebApp'),
              myPro(
                  'HTML-CSS-JS',
                  'Trekkers-Website',
                  'A website for trekkers to register and plan treks in proper way and planning with other trekkers',
                  '4',
                  'Easy',
                  'https://github.com/DarkWizardCK-24/Trekkers-Website'),
              myPro(
                  'XML',
                  'Black-Caps-NZ',
                  'A database of all players with their roles playing in New Zealand Cricket Team using XML and Excel',
                  '9',
                  'Easy',
                  'https://github.com/DarkWizardCK-24/Black-Caps-NZ'),
              myPro(
                  'FLUTTER',
                  'Portfolio',
                  'A perfect portfolio developed in the form of android application using flutter which is reposive in web and desktop',
                  '9',
                  'Easy',
                  'https://github.com/DarkWizardCK-24/Black-Caps-NZ'),
            ],
          ),
        ),
      ),
    );
  }
}
