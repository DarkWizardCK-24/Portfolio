import 'package:flutter/material.dart';
import 'package:portfolio/utils/projects.dart';
import 'package:portfolio/widgets/project_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      width: screenWidth,
      color: Colors.grey.shade900,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          const Text(
            'Projects',
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
              for (int i = 0; i < projectUtils.length; i++)
                ProjectCard(project: projectUtils[i])
            ],
          )
        ],
      ),
    );
  }
}
