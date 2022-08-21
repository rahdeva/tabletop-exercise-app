import 'package:flutter/material.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';
import 'package:tabletop_exercise_app/app/themes/decoration.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.controller, 
    required this.style, 
    required this.text, 
    required this.keyboardType, 
    required this.readOnly, 
    required this.margin,
  }) : super(key: key);

  final EdgeInsetsGeometry margin;
  final TextEditingController controller;
  final TextStyle style;
  final String text;
  final TextInputType keyboardType;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: textfieldDecoration(),
      child: TextField(
        readOnly: readOnly,
        controller: controller,
        keyboardType: keyboardType,
        autocorrect: false,
        decoration: InputDecoration(
          hintStyle: style,
          hintText: text,
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
      ),
    );
  }
}