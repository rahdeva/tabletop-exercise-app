import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tabletop_exercise_app/app/routes/app_pages.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';
import 'package:tabletop_exercise_app/app/themes/text_theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Resources.color.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Resources.color.greenColor1,
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Resources.images.poltekbangIcon
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          Resources.images.ppkpIcon,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "Home",
                          style: myTextTheme.headline6!.copyWith(
                            color: Resources.color.whiteColor,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                      const SizedBox(width: 48),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.ABOUT),
                        child: Text(
                          "About",
                          style: myTextTheme.headline6!.copyWith(
                            color: Resources.color.blackColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 48),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.LECTURER),
                        child: Text(
                          "Lecturer",
                          style: myTextTheme.headline6!.copyWith(
                            color: Resources.color.blackColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 48),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.CONTACT),
                        child: Text(
                          "Contact Us",
                          style: myTextTheme.headline6!.copyWith(
                            color: Resources.color.blackColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 48),
                      InkWell(
                        onTap: () => Get.offAllNamed(Routes.LOGIN),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Resources.color.backgroundColor,
                            borderRadius: BorderRadius.circular(18)
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,vertical: 8
                          ),
                          child: Text(
                            "Logout",
                            style: myTextTheme.headline6!.copyWith(
                              color: Resources.color.blackColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(),
                      Positioned(
                        top: -150,
                        bottom: 0,
                        left: 48,
                        child: Image.asset(
                          Resources.images.fireImages,
                          width: 700,
                          color: Resources.color.greenColor8,
                        ),
                      ),
                      Positioned(
                        right: 240,
                        bottom: 0,
                        child: CircleAvatar(
                          backgroundColor: Resources.color.greenColor4,
                          radius: 50,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: Get.width/2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GradientText(
                                  "Tabletop Excercise\nApplication",
                                  style: myTextTheme.headline2!.copyWith(
                                    fontWeight: FontWeight.bold
                                  ),
                                  gradientType: GradientType.radial,
                                  radius: 2,
                                  colors: [
                                    Resources.color.greenColor1,
                                    Resources.color.greenColor7,
                                  ],
                                ),
                                const SizedBox(height: 48),
                                Text(
                                  "ARFF Response time The operational objective of the ARFF Service should be to. achieve response time not exceeding 3 minutes to any other. part of the movement area in optimum visibility and surface conditions.",
                                  style: myTextTheme.headline5!.copyWith(
                                    color: Resources.color.blueColor2
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Resources.color.greenColor3,
                                    radius: 100,
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Resources.color.greenColor2,
                                  radius: 200,
                                ),
                                Image.asset(
                                  Resources.images.damkarImages,
                                  width: 500,
                                ),
                                Positioned(
                                  bottom: 32,
                                  left: 32,
                                  child: CircleAvatar(
                                    backgroundColor: Resources.color.greenColor3,
                                    radius: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        left: 64,
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              Resources.images.igIcon2,
                              width: 50,
                            ),
                            const SizedBox(width: 24),
                            Text(
                              "@ppkp.poltekbangplg",
                              style: myTextTheme.headline4,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 750),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    child: Stack(
                      children: [
                        Positioned(
                          right: 400,
                          top: 150,
                          child: CircleAvatar(
                            backgroundColor: Resources.color.greenColor3,
                            radius: 30,
                          ),
                        ),
                        Positioned(
                          top: 400,
                          left: 200,
                          child: CircleAvatar(
                            backgroundColor: Resources.color.greenColor4,
                            radius: 40,
                          ),
                        ),
                        Positioned(
                          top: 350,
                          left: 350,
                          child: CircleAvatar(
                            backgroundColor: Resources.color.greenColor1,
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          top: 420,
                          right: 63,
                          child: CircleAvatar(
                            backgroundColor: Resources.color.greenColor4,
                            radius: 50,
                          ),
                        ),
                        Positioned(
                          top: 600,
                          right: 450,
                          child: CircleAvatar(
                            backgroundColor: Resources.color.greenColor1,
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          top: 700,
                          left: 200,
                          child: CircleAvatar(
                            backgroundColor: Resources.color.greenColor1,
                            radius: 40,
                          ),
                        ),
                        Positioned(
                          top: 800,
                          left: 400,
                          child: CircleAvatar(
                            backgroundColor: Resources.color.greenColor4,
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          top: 900,
                          right: 200,
                          child: CircleAvatar(
                            backgroundColor: Resources.color.greenColor3,
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          top: 1000,
                          right: 500,
                          child: CircleAvatar(
                            backgroundColor: Resources.color.greenColor4,
                            radius: 40,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(64, 0, 64, 120),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Resources.color.blackColor,
                                      thickness: 1,
                                      height: 20,
                                    ),
                                  ),
                                  Text(
                                    "    Our Services    ", 
                                    style: myTextTheme.headline4!.copyWith(
                                      color: Resources.color.blackColor,
                                    )
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Resources.color.blackColor,
                                      thickness: 1,
                                      height: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 120,
                              width: Get.width/2-64,
                              margin: const EdgeInsets.only(left: 64),
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                color: Resources.color.whiteColor,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(200),
                                  bottomRight: Radius.circular(200),
                                ),
                                boxShadow: [dropShadow()]
                              ),
                              child: InkWell(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(200),
                                  bottomRight: Radius.circular(200),
                                ),
                                onTap: (){},
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          Resources.images.reference
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 32),
                                    Text(
                                      "References",
                                      style: myTextTheme.headline5!.copyWith(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 60),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 120,
                                width: Get.width/2-64,
                                margin: const EdgeInsets.only(right: 64),
                                decoration: BoxDecoration(
                                  color: Resources.color.whiteColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(200),
                                    bottomLeft: Radius.circular(200),
                                  ),
                                  boxShadow: [dropShadow()]
                                ),
                                child: InkWell(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(200),
                                    bottomLeft: Radius.circular(200),
                                  ),
                                  onTap: (){},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "ARFF Vehicle",
                                        style: myTextTheme.headline5!.copyWith(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      const SizedBox(width: 32),
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset(
                                            Resources.images.vehicle
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 60),
                            Container(
                              height: 120,
                              width: Get.width/2-64,
                              margin: const EdgeInsets.only(left: 64),
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                color: Resources.color.whiteColor,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(200),
                                  bottomRight: Radius.circular(200),
                                ),
                                boxShadow: [dropShadow()]
                              ),
                              child: InkWell(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(200),
                                  bottomRight: Radius.circular(200),
                                ),
                                onTap: (){},
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          Resources.images.reporting
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 32),
                                    Text(
                                      "Reporting System",
                                      style: myTextTheme.headline5!.copyWith(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 60),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 120,
                                width: Get.width/2-64,
                                margin: const EdgeInsets.only(right: 64),
                                decoration: BoxDecoration(
                                  color: Resources.color.whiteColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(200),
                                    bottomLeft: Radius.circular(200),
                                  ),
                                  boxShadow: [dropShadow()]
                                ),
                                child: InkWell(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(200),
                                    bottomLeft: Radius.circular(200),
                                  ),
                                  onTap: (){},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Real Tabletop",
                                        style: myTextTheme.headline5!.copyWith(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      const SizedBox(width: 32),
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset(
                                            Resources.images.reference
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 60),
                            Container(
                              height: 120,
                              width: Get.width/2-64,
                              margin: const EdgeInsets.only(left: 64),
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                color: Resources.color.whiteColor,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(200),
                                  bottomRight: Radius.circular(200),
                                ),
                                boxShadow: [dropShadow()]
                              ),
                              child: InkWell(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(200),
                                  bottomRight: Radius.circular(200),
                                ),
                                onTap: (){},
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          Resources.images.exercise
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 32),
                                    Text(
                                      "Tabletop Excercise",
                                      style: myTextTheme.headline5!.copyWith(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 100),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
