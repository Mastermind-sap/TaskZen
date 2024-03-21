import 'package:flutter/material.dart';
import 'package:task_leap/controllers/task/task_controller.dart';
import 'package:task_leap/widgets/snack_bar.dart';

import '../homescreen.dart';

class CreateOverlay extends StatefulWidget {
  const CreateOverlay({super.key});

  @override
  State<CreateOverlay> createState() => _CreateOverlayState();
}

var taskC = TextEditingController();

class _CreateOverlayState extends State<CreateOverlay> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        children: [
          TextField(
            controller: taskC,
            decoration: InputDecoration(hintText: "Enter task here"),
          )
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              if (taskC.text.isNotEmpty) {
                tasks.add(taskC.text);
                Navigator.pop(context);
                showSnackBar(context, "Task added!");
                //Show difference of taskEditingController
                // taskC.clear();
              } else {
                showSnackBar(context, "Task cannot be empty!");
              }
            },
            child: Text("Add task"))
      ],
    );
  }
}
