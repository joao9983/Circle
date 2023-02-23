import 'dart:math';
import 'package:flutter/material.dart';

class MinutePointer extends StatelessWidget {
  const MinutePointer({super.key, required DateTime dateTime});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final minute = DateTime.now().minute.toDouble();
    final angle = (-pi * (minute / -60) * 2);
    return RotatedBox(
      quarterTurns: 2,
      child: Transform.rotate(
        angle: angle,
        child: Transform.translate(
          offset: const Offset(0, 20),
          child: Center(
            child: Container(
              height: height * 0.1,
              width: 4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
