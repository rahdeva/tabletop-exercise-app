import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:get/get.dart';

class Car2Widget extends StatefulWidget {
  const Car2Widget({Key? key}) : super(key: key);

  @override
  State<Car2Widget> createState() => _Car2WidgetState();
}

class _Car2WidgetState extends State<Car2Widget> {
  double angle = 0;
  double xPosition = Get.width/2.80;
  double yPosition = Get.height/4.85;
  bool isCar2Active = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPosition,
      left: xPosition,
      child: GestureDetector(
        onPanUpdate: (tapInfo) {
          setState(() {
            isCar2Active = true;
            xPosition += tapInfo.delta.dx;
            yPosition += tapInfo.delta.dy;
          });
        },
        child: Column(
          children: [
            isCar2Active
            ? Row(
              children: [
                IconButton(
                    onPressed: (){
                      setState(() {
                        angle += 15 * math.pi / 160;
                      });
                    },
                    icon: const Icon(
                      Icons.rotate_left_rounded,
                      color: Colors.white,
                    ),
                  ),
                IconButton(
                    onPressed: (){
                      setState(() {
                        angle -= 15 * math.pi / 160;
                      });
                    },
                    icon: const Icon(
                      Icons.rotate_right_rounded,
                      color: Colors.white,
                    ),
                  ),
                IconButton(
                    onPressed: (){
                      setState(() {
                        isCar2Active = false;
                        xPosition += 38;
                        yPosition += 40;
                      });
                    },
                    icon: const Icon(
                      Icons.check_circle_outline_rounded,
                      color: Colors.green,
                    ),
                  ),
              ],
            )
            : Container(),
            Row(
              children: [
                Transform.rotate(
                  angle: angle,
                  child: Image.asset(
                    "assets/exercise/car2.png",
                    width: Get.width/35,
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}