import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AreaConceptController extends GetxController {
  TextEditingController nameC = TextEditingController();
  TextEditingController practicalC = TextEditingController();
  TextEditingController theoreticalC = TextEditingController();
  TextEditingController notesC = TextEditingController();
  RxString name = "Airplane Name".obs;
  RxString practical = "0 m".obs;
  RxString theoretical = "0 m".obs;
}
