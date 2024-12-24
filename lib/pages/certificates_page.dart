import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/utils/certificates.dart';
import 'dart:js' as js;

class CertificatesPage extends StatelessWidget {
  const CertificatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      width: screenWidth,
      color: Colors.grey.shade800,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          const Text(
            "Certificates",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: [
              for (int i = 0; i < certificates.length; i++)
                Container(
                    padding: const EdgeInsets.all(18),
                    width: 360,
                    height: 220,
                    clipBehavior: Clip.antiAlias,
                    decoration: kHeaderDecoration,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          certificates[i]["organisation"],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          certificates[i]["title"],
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Text(
                              "Skills : ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              certificates[i]["skills"],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.amber),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            const Text(
                              "Start : ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              certificates[i]["start"],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.amber),
                            ),
                            const Spacer(),
                            const Text(
                              "End : ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              certificates[i]["end"],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.amber),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            const Text(
                              "Certicate : ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Spacer(),
                            if (certificates[i]["link"] != null)
                              Tooltip(
                                  message: 'Click to access certificates',
                                  child: InkWell(
                                      onTap: () {
                                        js.context.callMethod(
                                            "open", [certificates[i]["link"]]);
                                      },
                                      child: const Icon(
                                        FontAwesomeIcons.certificate,
                                        size: 24,
                                        color: Colors.amber,
                                      ))),
                          ],
                        ),
                      ],
                    )),
            ],
          )
        ],
      ),
    );
  }
}
