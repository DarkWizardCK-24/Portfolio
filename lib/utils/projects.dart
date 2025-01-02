class Projects {
  final String image;
  final String title;
  final String subtitle;
  final String lang1;
  final String lang2;
  final String link;
  final String? link1;

  Projects({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.lang1,
    required this.lang2,
    required this.link,
    this.link1,
  });
}

List<Projects> projectUtils = [
  Projects(
      image: 'assets/projects/04.png',
      title: 'Portfolio',
      subtitle:
          'A perfect responsive portfolio built using flutter web with dart concepts and hosted using vercel.',
      lang1: 'assets/skills/flutter.png',
      lang2: 'assets/skills/chat.png',
      link: 'https://github.com/DarkWizardCK-24/Portfolio'),
  Projects(
      image: 'assets/projects/03.png',
      title: 'Recipe-App',
      subtitle:
          'A simple recipe app built using kotlin basics and API integration using retrofit library.',
      lang1: 'assets/skills/kotlin.png',
      lang2: 'assets/skills/chat.png',
      link: 'https://github.com/DarkWizardCK-24/Recipe-App'),
  Projects(
      image: 'assets/projects/01.png',
      title: 'Shopping List',
      subtitle:
          'A simple and basic application to add , update and delete items from the list using kotlin basics without advanced database system.',
      lang1: 'assets/skills/kotlin.png',
      lang2: 'assets/skills/chat.png',
      link: 'https://github.com/DarkWizardCK-24/Shopping_List',
      link1: 'https://bitbucket.org/flutter_works/workspace/overview/'),
      Projects(
      image: 'assets/projects/03.png',
      title: 'Captain Game',
      subtitle:
          'A simple and basic sailor game built using basic concepts of kotlin.',
      lang1: 'assets/skills/kotlin.png',
      lang2: 'assets/skills/chat.png',
      link: 'https://github.com/DarkWizardCK-24/Captain_Game',),
  Projects(
      image: 'assets/projects/05.png',
      title: 'Airport Management System',
      subtitle:
          'GUI interface using tkinter in python and connecting to MySQL using Python-MySQL connectivity.',
      lang1: 'assets/skills/python.png',
      lang2: 'assets/skills/sql.png',
      link: 'https://github.com/DarkWizardCK-24/Airport-Management-System'),
  Projects(
      image: 'assets/projects/03.png',
      title: 'BlackCaps NZ',
      subtitle:
          'A database of all players with their roles played or playing in New Zealand Cricket Team or have been part of the squad using XML and Excel.',
      lang1: 'assets/skills/xml.png',
      lang2: 'assets/skills/excel.png',
      link: 'https://github.com/DarkWizardCK-24/Black-Caps-NZ'),
];
