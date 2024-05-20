import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tabletop_exercise_app/app/routes/app_pages.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';
import 'package:tabletop_exercise_app/app/themes/text_theme.dart';

import '../controllers/contact_controller.dart';

class ContactView extends GetView<ContactController> {
  const ContactView({Key? key}) : super(key: key);

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
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          Resources.images.ppkpIcon,
                        ),
                      ),
                      Image.asset(
                        Resources.images.poltekbangIcon
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
                        onTap: (){},
                        child: Text(
                          "Contact Us",
                          style: myTextTheme.headline6!.copyWith(
                            color: Resources.color.whiteColor,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline
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
                        top: -60,
                        // bottom: 0,
                        left: 150,
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
                      Column(
                        children: [
                          const SizedBox(height: 100),
                          GradientText(
                            "Hubungi Kami disini",
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
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 50, bottom: 100),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(200),
                                  onTap: () => controller.klikLink(controller.linkWA),
                                  child: CircleAvatar(
                                    backgroundColor: Resources.color.greenColor1,
                                    radius: 120,
                                    child: Padding(
                                      padding: const EdgeInsets.all(45.0),
                                      child: Image.asset(
                                        Resources.images.waIcon
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 50, bottom: 100),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(200),
                                  onTap: () => controller.klikLink(controller.linkIG),
                                  child: CircleAvatar(
                                    backgroundColor: Resources.color.greenColor1,
                                    radius: 120,
                                    child: Padding(
                                      padding: const EdgeInsets.all(45.0),
                                      child: Image.asset(
                                        Resources.images.igIcon
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 50, bottom: 100),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(200),
                                  // onTap: () => controller.klikLink(controller.linkPoltekbang),
                                  onTap: (){},
                                  child: CircleAvatar(
                                    backgroundColor: Resources.color.greenColor1,
                                    radius: 120,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        Resources.images.poltekbangIcon
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 750),
                    ],
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
