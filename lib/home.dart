// ignore_for_file: avoid_types_as_parameter_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchiev(num, type) {
    return Row(
      children: [
        Text(num,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(type),
        )
      ],
    );
  }

  mySpec(icon, tech) {
    return Row(
      children: [
        // ignore: sized_box_for_whitespace
        Container(
          width: 160,
          height: 160,
          child: Card(
            color: const Color(0xff252525),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 55,
                ),
                Text(
                  tech,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextButton(
                child: const Text('Projects',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16)),
                onPressed: () {
                  Navigator.pushNamed(context, 'project');
                },
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: TextButton(
                child: const Text('Experience',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16)),
                onPressed: () {
                  Navigator.pushNamed(context, 'experience');
                },
              ),
              value: 2,
            ),
            PopupMenuItem(
              child: TextButton(
                child: const Text('Skills',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16)),
                onPressed: () {
                  Navigator.pushNamed(context, 'skills');
                },
              ),
              value: 3,
            ),
            PopupMenuItem(
              child: TextButton(
                child: const Text('About',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16)),
                onPressed: () {
                  Navigator.pushNamed(context, 'about');
                },
              ),
              value: 4,
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'My Portfolio',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.38, 0.7, 0.9],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent])
                      .createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/me.png',
                  height: 500,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.49),
              child: const Column(
                children: [
                  Text(
                    'Chaitanya Katare',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Mobile Android and Web Developer',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Specialized in',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.desktop_windows_rounded, 'Desktop'),
                        mySpec(Icons.android, 'Android\n(Mobile)'),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        mySpec(Icons.wb_cloudy_outlined, 'Cloud'),
                        mySpec(FontAwesomeIcons.chrome, 'Web')
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
