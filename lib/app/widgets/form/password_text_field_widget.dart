import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabletop_exercise_app/app/themes/color_theme.dart';
import 'package:tabletop_exercise_app/app/themes/decoration.dart';

class PasswordTextFieldWidget extends StatelessWidget {
  const PasswordTextFieldWidget({
    Key? key, 
    required this.controller, 
    required this.style, 
    required this.text, 
    required this.isHiddenController, 
    required this.margin,
  }) : super(key: key);

  final TextEditingController controller;
  final TextStyle style;
  final String text;
  final RxBool isHiddenController;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: textfieldDecoration(),
      child: Obx(
        () => TextField(
          controller: controller,
          keyboardType: TextInputType.visiblePassword,
          obscureText: isHiddenController.value,
          autocorrect: false,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: style,
            isDense: true,
            filled: true,
            hoverColor: Resources.color.whiteColor,
            fillColor: Resources.color.whiteColor,
            suffixIcon: IconButton(
              onPressed: () => isHiddenController.toggle(),
              icon: Icon(
                isHiddenController.isTrue
                ? Icons.visibility_rounded
                : Icons.visibility_off_rounded,
                color: Resources.color.slate500,
              )
            ),
            contentPadding: const EdgeInsets.all(20),
            border:  OutlineInputBorder(
              borderSide: BorderSide(
                color: Resources.color.slate300,
              ),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        )
      ),
    );
  }
}
