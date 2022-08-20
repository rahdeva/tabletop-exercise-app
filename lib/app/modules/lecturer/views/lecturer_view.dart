import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lecturer_controller.dart';

class LecturerView extends GetView<LecturerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LecturerView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LecturerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
