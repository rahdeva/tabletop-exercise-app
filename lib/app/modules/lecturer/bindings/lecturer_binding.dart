import 'package:get/get.dart';

import '../controllers/lecturer_controller.dart';

class LecturerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LecturerController>(
      () => LecturerController(),
    );
  }
}
