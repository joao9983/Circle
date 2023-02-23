import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnalogicCircle extends StatelessWidget {
  const AnalogicCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.22,
      width: width * 0.45,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 85, 211, 150),
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: Container(
              height: height * 0.22,
              width: width * 0.47,
              decoration: BoxDecoration(
                color: Colors.blueGrey[800],
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: [
                  for (var i = 1; i <= 12; i++)
                    Positioned(
                      top: height * 0.096 -
                          ((height * 0.08) *
                              math.cos((i * 30 * math.pi) / 180.0)),
                      left: width * 0.2 +
                          ((width * 0.18) *
                              math.sin((i * 30 * math.pi) / 180.0)),
                      child: Text(
                        i.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
