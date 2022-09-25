import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';
import 'package:tabletop_exercise_app/app/themes/text_theme.dart';

import '../controllers/area_concept_controller.dart';

class AreaConceptView extends GetView<AreaConceptController> {
  const AreaConceptView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            child: Container(
              height: Get.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Resources.appImages.areaConceptImage
                )
              ),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: Get.width/40, top: 24),
                    // child: Text(),
                    child: Obx(
                      () => Text(
                        controller.name.value,
                        style: myTextTheme.headline6!.copyWith(
                          color: Resources.color.blackColor,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: Get.height/2 +16,
                    right: (Get.width-400)/20,
                    child: Obx(
                      () => Text(
                        controller.theoretical.value,
                        style: myTextTheme.subtitle1!.copyWith(
                          color: Resources.color.blackColor
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: Get.height/2 +16,
                    right: (Get.width-400)/4.8,
                    child: Obx(
                      () => Text(
                        controller.practical.value,
                        style: myTextTheme.subtitle1!.copyWith(
                          color: Resources.color.blackColor
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            width: 400,
            height: Get.height,
            color: Colors.white,
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Area Concept",
                      style: myTextTheme.headline5!.copyWith(
                        color: Resources.color.blackColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.disabled_by_default_rounded,
                        size: 28,
                        color: Colors.redAccent,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Text(
                  "Aircraft",
                  style: myTextTheme.subtitle1!.copyWith(
                    color: Resources.color.blackColor
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextField(
                    controller: controller.nameC,
                    keyboardType: TextInputType.name,
                    autocorrect: false,
                    style: myTextTheme.subtitle1!.copyWith(
                      color: Resources.color.blackColor
                    ),
                    decoration: InputDecoration(
                      hintStyle: myTextTheme.subtitle1!.copyWith(
                        color: Colors.grey
                      ),
                      hintText: "Aircraft Name",
                      isDense: true,
                      filled: true,
                      hoverColor: Resources.color.whiteColor,
                      fillColor: Resources.color.whiteColor,
                      contentPadding: const EdgeInsets.all(20),
                      border:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Resources.color.slate300
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onChanged: ((value) {
                      controller.name.value = value;
                    }),
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 30,
                      color: const Color(0xFFBA3236),
                    ),
                    const SizedBox(width: 32),
                    Text(
                      "Practical Critical Area",
                      style: myTextTheme.bodyText1!.copyWith(
                        color: const Color(0xFFBA3236),
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 30,
                      color: const Color(0xFFD57538),
                    ),
                    const SizedBox(width: 32),
                    Text(
                      "Theoretical Critical Area",
                      style: myTextTheme.bodyText1!.copyWith(
                        color: const Color(0xFFD57538),
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 30,
                      color: const Color(0xFF359935),
                    ),
                    const SizedBox(width: 32),
                    Text(
                      "Escape Routes",
                      style: myTextTheme.bodyText1!.copyWith(
                        color: const Color(0xFF359935),
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 32),
                Text(
                  "Practical Critical Area (m)",
                  style: myTextTheme.subtitle1!.copyWith(
                    color: Resources.color.blackColor
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextField(
                    controller: controller.practicalC,
                    keyboardType: TextInputType.number,
                    autocorrect: false,
                    style: myTextTheme.subtitle1!.copyWith(
                      color: Resources.color.blackColor
                    ),
                    decoration: InputDecoration(
                      hintStyle: myTextTheme.subtitle1!.copyWith(
                        color: Colors.grey
                      ),
                      hintText: "0 m",
                      isDense: true,
                      filled: true,
                      hoverColor: Resources.color.whiteColor,
                      fillColor: Resources.color.whiteColor,
                      contentPadding: const EdgeInsets.all(20),
                      border:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Resources.color.slate300
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onChanged: ((value) {
                      controller.practical.value = value;
                    }),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Theoretical Critical Area (m)",
                  style: myTextTheme.subtitle1!.copyWith(
                    color: Resources.color.blackColor
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextField(
                    controller: controller.theoreticalC,
                    keyboardType: TextInputType.number,
                    autocorrect: false,
                    style: myTextTheme.subtitle1!.copyWith(
                      color: Resources.color.blackColor
                    ),
                    decoration: InputDecoration(
                      hintStyle: myTextTheme.subtitle1!.copyWith(
                        color: Colors.grey
                      ),
                      hintText: "0 m",
                      isDense: true,
                      filled: true,
                      hoverColor: Resources.color.whiteColor,
                      fillColor: Resources.color.whiteColor,
                      contentPadding: const EdgeInsets.all(20),
                      border:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Resources.color.slate300
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onChanged: ((value) {
                      controller.theoretical.value = value;
                    }),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  "Notes",
                  style: myTextTheme.headline6!.copyWith(
                    color: Resources.color.blackColor,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 5
                    )
                  ),
                  child: TextField(
                    expands : true,
                    controller: controller.notesC,
                    keyboardType: TextInputType.multiline,
                    autocorrect: false,
                    maxLines: null,
                    style: myTextTheme.subtitle1!.copyWith(
                      color: Resources.color.blackColor
                    ),
                    decoration: InputDecoration(
                      hintStyle: myTextTheme.subtitle1!.copyWith(
                        color: Colors.grey
                      ),
                      hintText: "",
                      isDense: true,
                      filled: true,
                      hoverColor: Resources.color.whiteColor,
                      fillColor: Resources.color.whiteColor,
                      contentPadding: const EdgeInsets.all(20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 
//     