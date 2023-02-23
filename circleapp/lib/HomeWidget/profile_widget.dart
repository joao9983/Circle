import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 85, 211, 150),
      child: SvgPicture.asset('images/Shape.svg'),
    );
  }
}
