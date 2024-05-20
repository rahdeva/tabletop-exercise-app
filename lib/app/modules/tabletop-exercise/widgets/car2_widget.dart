import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:get/get.dart';
// import 'package:lottie/lottie.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';

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
  bool isSpray = false;

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
                InkWell(
                    onTap: (){
                      setState(() {
                        if (isSpray == true) {
                          isSpray = false;
                          xPosition += 125;
                          yPosition += 28;
                        }
                        else {
                          isSpray = true;
                          xPosition -= 125;
                          yPosition -= 28;
                        }
                      });
                    },
                    child: isSpray
                      ? const Icon(
                          Icons.restore,
                          color: Colors.lightBlue,
                          size: 28,
                        )
                      : Image.asset(
                          Resources.images.waterIcon,
                          width: 28,
                        ),
                  ),
                IconButton(
                    onPressed: (){
                      setState(() {
                        isCar2Active = false;
                        if (isSpray == true) {
                          yPosition += 40;
                        }
                        else {
                          xPosition += 54;
                          yPosition += 40;
                        }
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
            Stack(
              alignment: Alignment.topCenter,
              children: [
                isSpray
                ? Transform.rotate(
                    angle: angle,
                    child: Image.asset(
                      Resources.images.water2,
                      width: Get.width/4.5,
                    ),
                  )
                : Transform.rotate(
                    angle: angle,
                    child: Image.asset(
                      "assets/exercise/car2.png",
                      width: Get.width/35,
                    )
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}