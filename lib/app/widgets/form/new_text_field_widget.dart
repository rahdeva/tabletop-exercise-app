import 'package:flutter/material.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';
// import 'package:tabletop_exercise_app/app/themes/decoration.dart';
import 'package:tabletop_exercise_app/app/themes/text_theme.dart';

class NewTextFieldWidget extends StatelessWidget {
  const NewTextFieldWidget({
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        readOnly: readOnly,
        controller: controller,
        keyboardType: keyboardType,
        autocorrect: false,
        style: myTextTheme.subtitle1!.copyWith(
          color: Resources.color.blackColor
        ),
        decoration: InputDecoration(
          hintStyle: myTextTheme.subtitle1!.copyWith(
            color: Colors.grey
          ),
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
        onChanged: ((value) {
          print(value);
        }),
      ),
    );
  }
}

