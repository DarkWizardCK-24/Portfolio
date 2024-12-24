import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient.dart';
import 'package:portfolio/widgets/logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        gradient: kGradientButton,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Logo(
              onTap: () {},
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu, color: Colors.black,),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
