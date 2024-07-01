import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

class Car1Widget extends StatefulWidget {
  const Car1Widget({Key? key}) : super(key: key);

  @override
  State<Car1Widget> createState() => _Car1WidgetState();
}

class _Car1WidgetState extends State<Car1Widget> {
  double angle = 0;
  double xPosition = Get.width/3.15;
  double yPosition = Get.height/1.45;
  bool isCar1Active = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPosition,
      left: xPosition,
      child: GestureDetector(
        onPanUpdate: (tapInfo) {
          setState(() {
            isCar1Active = true;
            xPosition += tapInfo.delta.dx;
            yPosition += tapInfo.delta.dy;
          });
        },
        child: Column(
          children: [
            isCar1Active
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
                        isCar1Active = false;
                        xPosition += 43;
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
                    "assets/exercise/car1.png",
                    width: Get.width/45,
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