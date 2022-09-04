import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';

import '../controllers/tabletop_exercise_controller.dart';

class TabletopExerciseView extends GetView<TabletopExerciseController> {
  const TabletopExerciseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              "assets/exercise/bgExercise.png",
            )
          )
        ),
        child: Stack(
          children: [
            // Arah mata angin
            Positioned(
              right: 0,
              top: 0,
              child: Image.asset(
                "assets/exercise/arahMataAngin.png",
                width: 200,
                height: 200,
              ),
            ),
            // Runway
            Positioned(
              bottom: Get.height/4.4,
              child: Image.asset(
                "assets/exercise/runway.png",
                width: Get.width,
              ),
            ),
            // Runway 2
            Positioned(
              bottom: Get.height/2.41,
              child: Image.asset(
                "assets/exercise/runway2.png",
                width: Get.width,
              ),
            ),
            // Fire Station
            Positioned(
              bottom: Get.height/1.5,
              left: Get.width/3.5,
              child: Image.asset(
                "assets/exercise/fireStation.png",
                width: Get.width/5,
              ),
            ),
            // Aprom
            Positioned(
              bottom: Get.height/1.6,
              right: Get.width/4.5,
              child: Image.asset(
                "assets/exercise/apron.png",
                width: Get.width/4,
              ),
            ),
            
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 100,
        width: Get.width/2,
        decoration: BoxDecoration(
          color: Resources.color.chocoColor2,
          borderRadius: BorderRadius.circular(35)
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                  color: Resources.color.chocoColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Image.asset("assets/exercise/pesawat1.png"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                  color: Resources.color.chocoColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Image.asset("assets/exercise/car1.png"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                  color: Resources.color.chocoColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Image.asset("assets/exercise/car2.png"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                  color: Resources.color.chocoColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Image.asset("assets/exercise/car3.png"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                  color: Resources.color.chocoColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Image.asset("assets/exercise/car4.png"),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
