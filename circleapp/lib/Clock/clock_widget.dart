import 'dart:async';

import 'package:flutter/material.dart';

import 'analogic_circle.dart';
import 'hour_pointer.dart';
import 'minute_pointer.dart';
import 'second_pointer.dart';

class ClockWidget extends StatefulWidget {
  const ClockWidget({Key? key}) : super(key: key);

  @override
  _ClockWidgetState createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  DateTime _now = DateTime.now();

  @override
  void initState() {
    super.initState();
    // Configura temporizador para atualizar o estado a cada segundo.
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _now = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const AnalogicCircle(),
            HourPointer(dateTime: _now),
            MinutePointer(dateTime: _now),
            SecondPointer(dateTime: _now),
            Container(
              height: height * 0.01,
              width: width * 0.05,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
