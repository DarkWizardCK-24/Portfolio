import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/social_links.dart';
import 'package:portfolio/styles/gradient.dart';
import 'package:portfolio/widgets/custom_textfield.dart';
import 'dart:js' as js;

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: screenWidth,
      color: Colors.grey.shade900,
      child: Column(
        children: [
          const Text(
            "Contact",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  const CustomTextfield(
                    hintText: "Your name",
                  ),
                  const CustomTextfield(
                    hintText: "Your email",
                  ),
                  const CustomTextfield(
                    hintText: "Your message",
                    maxLine: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          gradient: kGradientButton,
                          borderRadius: BorderRadius.circular(50)),
                      width: double.maxFinite,
                      child: const Text(
                        "Get in Touch",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          js.context.callMethod(
                            "open", [SocialLinks.github]
                          );
                        },
                        child: const Icon(
                          FontAwesomeIcons.github,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          js.context.callMethod(
                            "open", [SocialLinks.linkedIn]
                          );
                        },
                        child: const Icon(
                          FontAwesomeIcons.linkedin,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          js.context.callMethod(
                            "open", [SocialLinks.instaram]
                          );
                        },
                        child: const Icon(
                          FontAwesomeIcons.instagram,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          js.context.callMethod(
                            "open", [SocialLinks.trello]
                          );
                        },
                        child: const Icon(
                          FontAwesomeIcons.trello,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          js.context.callMethod(
                            "open", [SocialLinks.bitbucket]
                          );
                        },
                        child: const Icon(
                          FontAwesomeIcons.bitbucket,
                          size: 30,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
