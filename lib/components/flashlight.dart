import 'package:flutter/material.dart';

class FlashLight extends StatefulWidget {
  const FlashLight({Key? key}) : super(key: key);

  @override
  State<FlashLight> createState() => _FlashLightState();
}

class _FlashLightState extends State<FlashLight> {
  bool isFlashlightOpen = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
          isFlashlightOpen
              ? Icons.flashlight_on_outlined
              : Icons.flashlight_off_outlined,
          size: 350),
      onPressed: () {
        setState(() {
          isFlashlightOpen ? isFlashlightOpen = false : isFlashlightOpen = true;
        });
      },
    );
  }
}
