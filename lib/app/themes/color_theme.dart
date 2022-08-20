import 'package:flutter/material.dart';

class Resources {
  static AppColors color = AppColors();
  static AppImages images = AppImages();
}

class AppColors{
  Color backgroundColor = const Color(0xFFE7F6F2);
  Color whiteColor = const Color(0xFFFAFAFA);
  Color greenColor1 = const Color(0xFFA5C9CA);
  Color greenColor2 = const Color(0xFF508B7D);
  Color greenColor3 = const Color(0xFF90D0C2);
  Color greenColor4 = const Color.fromARGB(64, 144, 208, 194);
  Color greenColor5 = const Color(0xFFC7D090);
  Color greenColor6 = const Color(0xFF74B9A8);
  Color blueColor = const Color(0xFF90C1D0);
  Color purpleColor = const Color(0xFFCB90D0);
  Color orangeColor = const Color(0xFFD0A390);
  Color slate300 = const Color(0xFFCBD5E1);
  Color slate500 = const Color(0xFF64748B);
}

class AppImages {
  AssetImage bgImages = const AssetImage(
    'assets/images/bg-images.png'
  );
  AssetImage carImages = const AssetImage(
    'assets/images/car.png'
  );
  AssetImage damkarImages = const AssetImage(
    'assets/images/damkar.png'
  );
  AssetImage fireImages = const AssetImage(
    'assets/images/fire.png'
  );
  AssetImage lecturer1 = const AssetImage(
    'assets/images/lecturer-1.jpg'
  );
  AssetImage lecturer2 = const AssetImage(
    'assets/images/lecturer-2.jpg'
  );
  AssetImage lecturer3 = const AssetImage(
    'assets/images/lecturer-3.jpg'
  );
  AssetImage lecturer4 = const AssetImage(
    'assets/images/lecturer-4.jpg'
  );
  AssetImage igIcon = const AssetImage(
    'assets/images/ig-icon.png'
  );
  AssetImage poltekbangIcon = const AssetImage(
    'assets/images/poltekbang-icon.png'
  );
  AssetImage ppkpIcon = const AssetImage(
    'assets/images/ppkp-icon.png'
  );
  AssetImage waIcon = const AssetImage(
    'assets/images/wa-icon.png'
  );
}


BoxShadow dropShadow() {
  return BoxShadow(
    color: Resources.color.whiteColor.withOpacity(0.1),
    spreadRadius: 0,
    blurRadius: 20,
    offset: const Offset(0, 5), // changes position of shadow
  );
}

BoxDecoration shadowDecoration() {
  return BoxDecoration(
    boxShadow: [dropShadow()],
  );
}
