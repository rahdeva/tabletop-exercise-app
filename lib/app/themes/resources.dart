import 'package:flutter/material.dart';

class Resources {
  static AppColors color = AppColors();
  static AppImages appImages = AppImages();
  static Images images = Images();
}

class AppColors{
  Color backgroundColor = const Color(0xFFE7F6F2);
  Color whiteColor = const Color(0xFFFAFAFA);
  Color blackColor = const Color(0xFF000000);
  Color greenColor1 = const Color(0xFFA5C9CA);
  Color greenColor2 = const Color(0xFF508B7D);
  Color greenColor3 = const Color(0xFF90D0C2);
  Color greenColor4 = const Color.fromARGB(64, 144, 208, 194);
  Color greenColor5 = const Color(0xFFC7D090);
  Color greenColor6 = const Color(0xFF74B9A8);
  Color greenColor7 = const Color(0xFF395B64);
  Color greenColor8 = const Color.fromARGB(151, 144, 208, 194);
  Color greenColor9 = const Color.fromARGB(127, 144, 208, 194);
  Color blueColor = const Color(0xFF90C1D0);
  Color blueColor2 = const Color(0xFF2C5068);
  Color purpleColor = const Color(0xFFCB90D0);
  Color orangeColor = const Color(0xFFD0A390);
  Color chocoColor = const Color.fromARGB(178, 208, 163, 144);
  Color chocoColor2 = const Color(0xFF886760);
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
  AssetImage areaConceptImage = const AssetImage(
    'assets/images/area-concept-image.png'
  );
}

class Images {
  String bgImages = 'assets/images/bg-images.png';
  String carImages = 'assets/images/car.png';
  String damkarImages = 'assets/images/damkar.png';
  String fireImages = 'assets/images/fire.png';
  String lecturer1 = 'assets/images/lecturer-1.jpg';
  String lecturer2 = 'assets/images/lecturer-2.jpg';
  String lecturer3 = 'assets/images/lecturer-3.jpg';
  String lecturer4 = 'assets/images/lecturer-4.jpg';
  String igIcon = 'assets/icons/ig-icon.png';
  String igIcon2 = 'assets/icons/ig-icon-2.png';
  String poltekbangIcon = 'assets/icons/poltekbang-icon.png';
  String ppkpIcon = 'assets/icons/ppkp-icon.png';
  String waIcon = 'assets/icons/wa-icon.png';
  String reference = 'assets/icons/reference.png';
  String reporting = 'assets/icons/reporting.png';
  String vehicle = 'assets/icons/vehicle.png';
  String realTabletop = 'assets/icons/real-tabletop.png';
  String exercise = 'assets/icons/exercise.png';
  String appRate = 'assets/icons/app-rate.png';
  String areaConcept = 'assets/icons/area-concept.png';
  // String areaConceptImage = 'assets/images/area-concept-image.png';
}


BoxShadow dropShadow() {
  return BoxShadow(
    color: Resources.color.blackColor.withOpacity(0.1),
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
