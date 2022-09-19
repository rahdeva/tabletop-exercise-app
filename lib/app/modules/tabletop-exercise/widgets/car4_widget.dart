import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:get/get.dart';

class Car4Widget extends StatefulWidget {
  const Car4Widget({Key? key}) : super(key: key);

  @override
  State<Car4Widget> createState() => _Car4WidgetState();
}

class _Car4WidgetState extends State<Car4Widget> {
  double angle = 0;
  double xPosition = Get.width/2.20;
  double yPosition = Get.height/4.75;
  bool isCar4Active = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPosition,
      left: xPosition,
      child: GestureDetector(
        onPanUpdate: (tapInfo) {
          setState(() {
            isCar4Active = true;
            xPosition += tapInfo.delta.dx;
            yPosition += tapInfo.delta.dy;
          });
        },
        child: Column(
          children: [
            isCar4Active
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
                        isCar4Active = false;
                        xPosition += 26;
                        yPosition += 38;
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
                  child: Image.asset("assets/exercise/car4.png")
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}