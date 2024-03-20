import 'package:flutter/material.dart';
import 'package:task_leap/config/assets.dart';
import 'package:task_leap/widgets/snack_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "/homepage";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> tasks = [
  "To learn flutter",
  "Day3",
  "Flutter Forward Extended",
  "GDSC"
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TaskZen"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        backgroundColor: (Colors.cyan),
        body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final task = tasks[index];
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd)
                  showSnackBar(context, "Deleted task");
                else
                  showSnackBar(context, "Less Go!!");
              },
              key: Key("$index"),
              child: ListTile(
                title: Text(
                  task,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
          },
        ));
  }
}
