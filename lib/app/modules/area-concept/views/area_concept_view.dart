import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';
import 'package:tabletop_exercise_app/app/themes/text_theme.dart';
import 'package:tabletop_exercise_app/app/widgets/form/new_text_field_widget.dart';
import 'package:tabletop_exercise_app/app/widgets/form/text_field_widget.dart';

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
                        color: Resources.color.blackColor
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
                NewTextFieldWidget(
                  margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  controller: controller.practicalC,
                  keyboardType: TextInputType.number,
                  readOnly: false,
                  style: myTextTheme.subtitle1!.copyWith(
                    color: Resources.color.blackColor
                  ),
                  text: "0 m",
                ),
                const SizedBox(height: 16),
                Text(
                  "Theoretical Critical Area (m)",
                  style: myTextTheme.subtitle1!.copyWith(
                    color: Resources.color.blackColor
                  ),
                ),
                const SizedBox(height: 16),
                NewTextFieldWidget(
                  margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  controller: controller.theoreticalC,
                  keyboardType: TextInputType.number,
                  readOnly: false,
                  style: myTextTheme.subtitle1!.copyWith(
                    color: Resources.color.blackColor
                  ),
                  text: "0 m",
                ),
                const SizedBox(height: 24),
                Text(
                  "Notes",
                  style: myTextTheme.headline6!.copyWith(
                    color: Resources.color.blackColor
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