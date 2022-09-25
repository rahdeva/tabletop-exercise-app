import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaneWidget extends StatefulWidget {
  const PlaneWidget({Key? key}) : super(key: key);

  @override
  State<PlaneWidget> createState() => _PlaneWidgetState();
}

class _PlaneWidgetState extends State<PlaneWidget> {
  // double angle = 0.0;
  double xPosition = -100;
  double yPosition = 200;
  bool isPlaneActive = false;

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
        child: Column(
          children: [
            // isPlaneActive
            // ? IconButton(
            //   onPressed: (){
            //           setState(() {
            //             angle += 15 * math.pi / 160;
            //           });
            //         },
            //         icon: const Icon(
            //           Icons.rotate_left_rounded,
            //           color: Colors.white,
            //         ),
            //       ),
            Image.asset(
              "assets/exercise/pesawat1.png",
              width: Get.width/5,
            ),
          ],
        ),
      ),
    );
  }
}