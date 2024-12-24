import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      alignment: Alignment.center,
      color: CustomColor.scaffoldBg,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Made by DarkWizard_CK-24 with Flutter 3.24",
              style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w500),
            ),
            Text("© 2024 All rights reserved", style: TextStyle(color: Colors.amber,),)
          ],
        ),
      ),
    );
  }
}
