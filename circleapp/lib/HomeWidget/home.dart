// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:circle/Clock/clock_widget.dart';
import 'package:circle/HomeWidget/list_of_task_widget.dart';
import 'package:circle/HomeWidget/profile_widget.dart';
import 'package:circle/CheckBox/checkbox_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Material(
      color: const Color.fromARGB(255, 85, 211, 150),
      child: Column(
        children: [
          Row(
            children: const [
              ProfileWidget(),
            ],
          ),
          Container(
            width: width * 0.5,
            height: height * 0.18,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://i.imgur.com/BoN9kdC.png"),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          const Text(
            "Welcome, João Carlos",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Container(
            height: height * 0.56,
            width: width * 1,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Good morning!",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, height * 0.01, 0, height * 0.02),
                      child: const ClockWidget(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const Text(
                      "List Of Task",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.11),
                        child: const Text(
                          "Task List",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.11),
                        child: IconButton(
                          icon: const Icon(
                            Icons.add_circle_outline,
                            size: 20,
                            color: Color.fromARGB(255, 85, 211, 150),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: width * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            child: ListView(
                          shrinkWrap: true,
                          children: [const ListOfTaskWidget()],
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
