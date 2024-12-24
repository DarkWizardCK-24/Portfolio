import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient.dart';
import 'dart:js' as js;

class ResumeButton extends StatelessWidget {
  const ResumeButton({super.key, this.onButtonTap});
  final VoidCallback? onButtonTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        js.context.callMethod("open", []);
      },
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            gradient: kGradientButton, borderRadius: BorderRadius.circular(20)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Resume",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.open_in_new,
              size: 20,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
