import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/projects.dart';
import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  final Projects project;
  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 330,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF333646),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image,
            width: 280,
            height: 140,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(
              project.title,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Text(
              project.subtitle,
              style: const TextStyle(fontSize: 12, color: Colors.white70),
            ),
          ),
          const Spacer(),
          Container(
            color: const Color(0xFF424657),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Language :',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.cyanAccent),
                    ),
                    const Spacer(),
                    Image.asset(
                      project.lang1,
                      height: 20,
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Image.asset(
                        project.lang2,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text(
                      'Source Code :',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.amber),
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {
                          js.context.callMethod("open", [project.link]);
                        },
                        child: const Tooltip(
                            message: 'Github',
                            child: Icon(
                              FontAwesomeIcons.github,
                              size: 20,
                              color: Colors.white,
                            ))),
                    if (project.link1 != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Tooltip(
                            message: 'Bitbucket',
                            child: InkWell(
                                onTap: () {
                                  js.context.callMethod("open", [project.link1]);
                                },
                                child: const Icon(
                                  FontAwesomeIcons.bitbucket,
                                  size: 20,
                                  color: Colors.white,
                                ))),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
