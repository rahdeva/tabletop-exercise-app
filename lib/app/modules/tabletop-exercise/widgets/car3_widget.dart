import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:get/get.dart';

class Car3Widget extends StatefulWidget {
  const Car3Widget({Key? key}) : super(key: key);

  @override
  State<Car3Widget> createState() => _Car3WidgetState();
}

class _Car3WidgetState extends State<Car3Widget> {
  double angle = 0;
  double xPosition = Get.width/2.45;
  double yPosition = Get.height/4.75;
  bool isCar3Active = false;
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPosition,
      left: xPosition,
      child: GestureDetector(
        onPanUpdate: (tapInfo) {
          setState(() {
            isCar3Active = true;
            xPosition += tapInfo.delta.dx;
            yPosition += tapInfo.delta.dy;
          });
        },
        child: Column(
          children: [
            isCar3Active
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
                        isCar3Active = false;
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
                  child: Image.asset("assets/exercise/car3.png")
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}