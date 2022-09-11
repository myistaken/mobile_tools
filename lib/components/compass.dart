import 'package:flutter/material.dart';

class Compass extends StatefulWidget {
  const Compass({Key? key}) : super(key: key);

  @override
  State<Compass> createState() => _CompassState();
}

class _CompassState extends State<Compass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(Icons.compass_calibration, size: 350),
    );
  }
}
