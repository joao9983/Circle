import 'dart:math';
import 'package:flutter/material.dart';

class SecondPointer extends StatelessWidget {
  const SecondPointer({super.key, required DateTime dateTime});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final second = DateTime.now().second.toDouble();
    final angle = (-pi * (second / -60) * 2);
    return RotatedBox(
      quarterTurns: 2,
      child: Transform.rotate(
        angle: angle,
        child: Transform.translate(
          offset: const Offset(0, 20),
          child: Center(
            child: Container(
              height: height * 0.11,
              width: 2,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 85, 211, 150),
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
