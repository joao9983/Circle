import 'dart:math';
import 'package:flutter/material.dart';

class HourPointer extends StatelessWidget {
  const HourPointer({super.key, required DateTime dateTime});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final hour = DateTime.now().hour.toDouble();
    final angle = (-pi * (hour / -12) * 2);
    return RotatedBox(
      quarterTurns: 2,
      child: Transform.rotate(
        angle: angle,
        child: Transform.translate(
          offset: const Offset(0, 20),
          child: Center(
            child: Container(
              height: height * 0.06,
              width: 4,
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
