import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';

class Plane2Widget extends StatefulWidget {
  const Plane2Widget({Key? key}) : super(key: key);

  @override
  State<Plane2Widget> createState() => _Plane2WidgetState();
}

class _Plane2WidgetState extends State<Plane2Widget> {
  // double angle = 0.0;
  double xPosition = -100;
  double yPosition = 200;
  bool isPlaneActive = false;
  bool isCrash = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPosition,
      left: xPosition,
      child: GestureDetector(
        onPanUpdate: (tapInfo) {
          setState(() {
            isPlaneActive = true;
            xPosition += tapInfo.delta.dx;
            yPosition += tapInfo.delta.dy;
          });
        },
        child: Column(
          children: [
            isPlaneActive
            ? Row(
              children: [
                InkWell(
                    onTap: (){
                      setState(() {
                        (isCrash == true)
                        ? isCrash = false
                        : isCrash = true;
                      });
                    },
                    child: isCrash
                      ? const Icon(
                          Icons.restore,
                          color: Colors.orange,
                          size: 28,
                        )
                      : Image.asset(
                          Resources.images.crash,
                          width: 28,
                        ),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: (){
                      setState(() {
                        isPlaneActive = false;
                        xPosition += 0;
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
            Stack(
              children: [
                Image.asset(
                  "assets/images/img_new_plane.png",
                  width: Get.width/8,
                ),
                isCrash
                ? Positioned(
                  top: 15,
                  left: 130,
                  child: Lottie.asset(
                      Resources.images.fire,
                      width: 50,
                    ),
                )
                : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}