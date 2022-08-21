import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tabletop_exercise_app/app/routes/app_pages.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';
import 'package:tabletop_exercise_app/app/themes/text_theme.dart';

import '../controllers/lecturer_controller.dart';

class LecturerView extends GetView<LecturerController> {
  const LecturerView({Key? key}) : super(key: key);

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
                        onTap: () => Get.toNamed(Routes.HOME),
                        child: Text(
                          "Home",
                          style: myTextTheme.headline6!.copyWith(
                            color: Resources.color.blackColor,
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
                        onTap: (){},
                        child: Text(
                          "Lecturer",
                          style: myTextTheme.headline6!.copyWith(
                            color: Resources.color.whiteColor,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline
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
                        top: 450,
                        right: 550,
                        child: CircleAvatar(
                          backgroundColor: Resources.color.greenColor4,
                          radius: 50,
                        ),
                      ),
                      Positioned(
                        top: 550,
                        right: 400,
                        child: CircleAvatar(
                          backgroundColor: Resources.color.greenColor1,
                          radius: 30,
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
                      Column(
                        children: [
                          Container(
                            width: Get.width,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 64,
                              vertical: 64
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Resources.color.greenColor1,
                                  radius: 200,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: CircleAvatar(
                                      radius: 180,
                                      backgroundImage: Resources.appImages.lecturer1,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 64),
                                    padding: const EdgeInsets.all(32),
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Resources.color.greenColor9,
                                      borderRadius: BorderRadius.circular(55),
                                      boxShadow: [dropShadow()]
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Anton Abdullah, S.T., M.M.",
                                          style: myTextTheme.headline4,
                                        ),
                                        Text(
                                          "NIDN : 4225107801",
                                          style: myTextTheme.headline4,
                                        ),
                                        Text(
                                          "Status : Dosen Tetap",
                                          style: myTextTheme.headline4,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: Get.width,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 64,
                              vertical: 64
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Resources.color.greenColor1,
                                  radius: 200,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: CircleAvatar(
                                      radius: 180,
                                      backgroundImage: Resources.appImages.lecturer2,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 64),
                                    padding: const EdgeInsets.all(32),
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Resources.color.greenColor9,
                                      borderRadius: BorderRadius.circular(55),
                                      boxShadow: [dropShadow()]
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sutiyo, S.Sos., M.M.",
                                          style: myTextTheme.headline4,
                                        ),
                                        Text(
                                          "NIDN : 4211106801",
                                          style: myTextTheme.headline4,
                                        ),
                                        Text(
                                          "Status : Dosen Tetap",
                                          style: myTextTheme.headline4,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
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
                          top: 0,
                          child: CircleAvatar(
                            backgroundColor: Resources.color.greenColor3,
                            radius: 30,
                          ),
                        ),
                        Positioned(
                          top: 1200,
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
                          top: 400,
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
                          top: 950,
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
                              width: Get.width,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 64,
                                vertical: 64
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Resources.color.greenColor1,
                                    radius: 200,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: CircleAvatar(
                                        radius: 180,
                                        backgroundImage: Resources.appImages.lecturer3,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 64),
                                      padding: const EdgeInsets.all(32),
                                      height: 250,
                                      decoration: BoxDecoration(
                                        color: Resources.color.greenColor9,
                                        borderRadius: BorderRadius.circular(55),
                                        boxShadow: [dropShadow()]
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Wildan Nugraha, S.E., M.S.ASM.",
                                            style: myTextTheme.headline4,
                                          ),
                                          Text(
                                            "NIDN : 4221018901",
                                            style: myTextTheme.headline4,
                                          ),
                                          Text(
                                            "Status : Dosen Tetap",
                                            style: myTextTheme.headline4,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: Get.width,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 64,
                                vertical: 64
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Resources.color.greenColor1,
                                    radius: 200,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: CircleAvatar(
                                        radius: 180,
                                        backgroundImage: Resources.appImages.lecturer4,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 64),
                                      padding: const EdgeInsets.all(32),
                                      height: 250,
                                      decoration: BoxDecoration(
                                        color: Resources.color.greenColor9,
                                        borderRadius: BorderRadius.circular(55),
                                        boxShadow: [dropShadow()]
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Yacob Mandala P. Pandjaitan, S.S.T., M.Si.",
                                            style: myTextTheme.headline4,
                                          ),
                                          Text(
                                            "NIDN : 4202128701",
                                            style: myTextTheme.headline4,
                                          ),
                                          Text(
                                            "Status : Dosen Tetap",
                                            style: myTextTheme.headline4,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]
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
