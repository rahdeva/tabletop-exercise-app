import 'package:get/get.dart';

import '../controllers/tabletop_exercise_controller.dart';

class TabletopExerciseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabletopExerciseController>(
      () => TabletopExerciseController(),
    );
  }
}
