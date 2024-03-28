import 'package:flutter/material.dart';

class MySkills extends StatefulWidget {
  const MySkills({super.key});

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {
  mySkills(img, tech, level, gd) {
    return Row(
      children: [
        // ignore: sized_box_for_whitespace
        Container(
          width: 170,
          height: 240,
          child: Card(
            color: const Color(0xff252525),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  img,
                  height: 60,
                  width: 60,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  tech,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('Level :',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(level,
                          style: const TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('Grade :',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(gd,
                          style: const TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff252525),
        title: const Text(
          'Skills',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mySkills('assets/flutter.png', 'Flutter', 'Experienced', '8'),
                  mySkills('assets/python.png', 'Python', 'Experienced', '9'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mySkills('assets/html.png', 'HTML', 'Experienced', '7'),
                  mySkills('assets/css.png', 'CSS', 'Experienced', '6'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mySkills('assets/js.png', 'JS', 'Skillful', '7'),
                  mySkills('assets/react.png', 'React', 'Skillful', '7'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mySkills('assets/nosql.png', 'NoSQL', 'Experienced', '9'),
                  mySkills('assets/mysql.png', 'MySQL', 'Experienced', '9'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mySkills('assets/aws.png', 'AWS', 'Beginner', '6'),
                  mySkills('assets/chat.png', 'ChatGPT', 'Skillful', '7'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
