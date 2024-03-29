import 'package:flutter/material.dart';

class MyExperience extends StatefulWidget {
  const MyExperience({super.key});

  @override
  State<MyExperience> createState() => _MyExperienceState();
}

class _MyExperienceState extends State<MyExperience> {
  myExp(
    title,
    desc,
    dur,
    status,
  ) {
    return Container(
      height: 270,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 10, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 27,
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
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'Duration :',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    dur,
                    style: const TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Status :',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    status,
                    style: const TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
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
      backgroundColor: const Color.fromARGB(255, 1, 5, 51),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Experience',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myExp(
                  'Acmegrade DataScience',
                  'Using various algorithms learned to manage and analyse data using Python and MySQL',
                  'Sept 2022 - Nov 2022',
                  'Completed'),
              myExp(
                  'IEEE-PCE',
                  'Volunteer in technical team of IEEE-PCE student chapter while persuing degree and gained knowledge and experience of workshops and team management',
                  'Sept 2022 - Present',
                  'Present'),
              myExp(
                  'Reliance-Jio',
                  'Fulltime internship in organisation and working as frontend developer, gained knowledge and experience to work on real-time projects with efficiency',
                  'Jan 2024 - Present',
                  'Present')
            ],
          ),
        ),
      ),
    );
  }
}
