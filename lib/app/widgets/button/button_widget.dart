import 'package:flutter/material.dart';
import 'package:tabletop_exercise_app/app/themes/color_theme.dart';
import 'package:tabletop_exercise_app/app/themes/text_theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.onPress,
    required this.text,
  }) : super(key: key);

  final Function() onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        text,
        style: myTextTheme.headline6!.copyWith(
          color: Resources.color.whiteColor
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
