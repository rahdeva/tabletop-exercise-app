import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/area_concept_controller.dart';

class AreaConceptView extends GetView<AreaConceptController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AreaConceptView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AreaConceptView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
