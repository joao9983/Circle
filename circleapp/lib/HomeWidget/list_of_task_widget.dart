import 'package:flutter/material.dart';

class ListOfTaskWidget extends StatefulWidget {
  const ListOfTaskWidget({super.key});

  @override
  State<ListOfTaskWidget> createState() => _ListOfTaskWidgetState();
}

class _ListOfTaskWidgetState extends State<ListOfTaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(value: false, onChanged: ((value) => true)),
                const Text("Group meeting at 9 am")
              ],
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: ((value) => true)),
                const Text("Project presentation at 3 pm")
              ],
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: ((value) => true)),
                const Text("Dinner  at 7 pm")
              ],
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: ((value) => true)),
                const Text("Lunch at 11 am")
              ],
            ),
            Row(),
          ],
        ),
      ),
    );
  }
}
