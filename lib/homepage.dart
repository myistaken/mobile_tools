import 'package:flutter/material.dart';
import 'package:mobile_tools/components/compass.dart';
import 'package:mobile_tools/components/flashlight.dart';
import 'package:mobile_tools/components/timer.dart';

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
            FlashLight(),
            Compass(),
            Timer(),
          ],
        ),
      ),
    );
  }
}
