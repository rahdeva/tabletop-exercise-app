import 'package:flutter/material.dart';
import 'package:tabletop_exercise_app/app/themes/color_theme.dart';

BoxDecoration textfieldDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(14),
    boxShadow: [dropShadow()],
  );
}

// BoxDecoration buttonDecoration() {
//   return BoxDecoration(
//     borderRadius: BorderRadius.circular(27),
//     boxShadow: [dropShadow()],
//     gradient: yellowLinearGradient(),
//   );
// }

// BoxDecoration shadowDecoration() {
//   return BoxDecoration(boxShadow: [dropShadow()]);
// }