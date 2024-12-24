import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: const Text(
          "CK",
          style: TextStyle(
            color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ));
  }
}
