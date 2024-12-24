import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              titleTextStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.whitePrimary),
              leading: Icon(
                navIcons[i],
                color: CustomColor.whitePrimary,
              ),
              title: Text(navTitles[i]),
              onTap: () {
                onNavItemTap(i);
              },
            )
        ],
      ),
    );
  }
}
