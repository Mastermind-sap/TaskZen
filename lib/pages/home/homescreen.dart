import 'package:flutter/material.dart';
import 'package:task_leap/config/assets.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "/homepage";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 10,
              decoration: BoxDecoration(color: Colors.red),
            ),
            Container(
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              child: Center(child: Text("Hello",style: TextStyle(fontSize: 100),)),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.yellow, Colors.green])),
            ),
            Container(
              height:100,
              width: MediaQuery.sizeOf(context).width,
              child: Center(child: Text("Everyone",style: TextStyle(fontFamily: "SofiaPro",fontSize: 80),),),
              color: Colors.brown,
            ),
            Container(
              height:100,
              child: Center(child: Text("FFE Day-3",style: TextStyle(fontSize: 50,color: Colors.white),)),
              color: Colors.black,
            ),
            Container(
              height: 1000,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Assets.gdscLogo))),
            )
          ],
        ),
      ),
    );
  }
}
