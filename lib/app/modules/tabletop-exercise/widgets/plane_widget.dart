import 'package:flutter/material.dart';

class PlaneWidget extends StatefulWidget {
  const PlaneWidget({Key? key}) : super(key: key);

  @override
  State<PlaneWidget> createState() => _PlaneWidgetState();
}

class _PlaneWidgetState extends State<PlaneWidget> {
  // double angle = 0.0;
  double xPosition = -100;
  double yPosition = 200;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPosition,
      left: xPosition,
      child: GestureDetector(
        onPanUpdate: (tapInfo) {
          setState(() {
            xPosition += tapInfo.delta.dx;
            yPosition += tapInfo.delta.dy;
          });
        },
        child: Image.asset("assets/exercise/pesawat1.png"),
      ),
    );
  }
}