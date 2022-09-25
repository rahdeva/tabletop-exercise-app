import 'package:get/get.dart';

import '../controllers/area_concept_controller.dart';

class AreaConceptBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AreaConceptController>(
      () => AreaConceptController(),
    );
  }
}
