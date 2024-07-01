import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:tabletop_exercise_app/app/modules/tabletop-exercise/widgets/car1_widget.dart';
import 'package:tabletop_exercise_app/app/modules/tabletop-exercise/widgets/car2_widget.dart';
import 'package:tabletop_exercise_app/app/modules/tabletop-exercise/widgets/car3_widget.dart';
import 'package:tabletop_exercise_app/app/modules/tabletop-exercise/widgets/car4_widget.dart';
import 'package:tabletop_exercise_app/app/modules/tabletop-exercise/widgets/plane2_widget.dart';
// import 'package:tabletop_exercise_app/app/modules/tabletop-exercise/widgets/plane_widget.dart';
import 'package:tabletop_exercise_app/app/themes/text_theme.dart';

import '../controllers/tabletop_exercise_controller.dart';

class TabletopExerciseView extends GetView<TabletopExerciseController> {
  const TabletopExerciseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              // "assets/exercise/bgTabletopExercise.png",
              "assets/images/img_new_runway.png",
            )
          )
        ),
        child: Stack(
          children: [
            InkWell(
              onTap: () => Get.back(),
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(23)
                ),
                child: Text(
                  "Home",
                  style: myTextTheme.headline5,
                ),
              ),
            ),
            // const Car1Widget(),
            const Car2Widget(),
            const Car3Widget(),
            const Car4Widget(),
            // const PlaneWidget(),
            const Plane2Widget(),
          ],
        ),
      ),
    );
  }
}