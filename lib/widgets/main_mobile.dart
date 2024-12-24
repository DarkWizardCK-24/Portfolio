import 'package:flutter/material.dart';
import 'package:portfolio/constants/button.dart';
import 'package:portfolio/constants/colors.dart';
import 'dart:js' as js;

import 'package:portfolio/constants/social_links.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 800),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.bgLight1.withOpacity(0.3),
                CustomColor.bgLight2.withOpacity(0.3),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "dev.png",
              width: screenWidth,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Hello, I am ",
            style: TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w300,
                fontSize: 16),
          ),
          const Text(
            "Chaitanya Katare",
            style: TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w700,
                fontSize: 30),
          ),
          const SizedBox(height: 10),
          const Text(
            "I am a developer and looking for dev roles across the world.",
            style: TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w300,
                fontSize: 16),
          ),
          const SizedBox(height: 20),
          const Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              Chip(
                  backgroundColor: Colors.green,
                  label: Text("Ui/Ux Developer",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600))),
              Chip(
                  backgroundColor: Colors.green,
                  label: Text(
                    "Flutter Developer",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )),
              Chip(
                  backgroundColor: Colors.green,
                  label: Text("Android Developer",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600))),
              Chip(
                  backgroundColor: Colors.green,
                  label: Text("Frontend Developer",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600))),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          ResumeButton(
            onButtonTap: () {
              js.context.callMethod("open", [SocialLinks.resume]);
            },
          ),
        ],
      ),
    );
  }
}
