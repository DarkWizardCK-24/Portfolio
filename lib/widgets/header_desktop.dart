import 'package:flutter/material.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/styles/gradient.dart';
import 'package:portfolio/widgets/logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: kGradientButton,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Logo(
                onTap: () {},
              )),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: TextButton(
                  onPressed: () {
                    onNavMenuTap(i);
                  },
                  child: Text(
                    navTitles[i],
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            )
        ],
      ),
    );
  }
}
