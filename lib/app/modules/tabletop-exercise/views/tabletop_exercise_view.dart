import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tabletop_exercise_controller.dart';

class TabletopExerciseView extends GetView<TabletopExerciseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabletopExerciseView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TabletopExerciseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
