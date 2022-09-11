import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.flashlight_on_outlined)),
              Tab(icon: Icon(Icons.compass_calibration)),
              Tab(icon: Icon(Icons.timelapse_rounded)),
            ],
          ),
          title: Text('Mobile Tools'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.flashlight_on_outlined, size: 350),
            Icon(Icons.compass_calibration, size: 350),
            Icon(Icons.timelapse_rounded, size: 350),
          ],
        ),
      ),
    );
  }
}
