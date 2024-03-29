import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';
import 'package:tabletop_exercise_app/app/themes/text_theme.dart';
import 'package:tabletop_exercise_app/app/widgets/form/password_text_field_widget.dart';
import 'package:tabletop_exercise_app/app/widgets/form/text_field_widget.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 700) {
            return const ContentLogin();
          } else if (constraints.maxWidth <= 1000) {
            return const ContentLogin();
          } else if (constraints.maxWidth <= 1400) {
            return const ContentLogin();
          } else {
            return const ContentLogin();
          }
        }
      ),
    );
  }
}

class ContentLogin extends GetView<LoginController> {
  const ContentLogin({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Resources.appImages.bgImages,
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 100,
        vertical: 60
      ),
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          color: Resources.color.whiteColor,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Resources.color.greenColor6,
                borderRadius: BorderRadius.circular(50)
              ),
              width: Get.width/2 - 100,
              height: Get.height,
              padding: const EdgeInsets.all(40),
              child: Image.asset(
                Resources.images.carImages,
              )
            ),
            Container(
              width: Get.width/2 - 100,
              height: Get.width/2 - 60,
              padding: const EdgeInsets.all(60),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Welcome To Tabletop Excercise',
                      style: myTextTheme.headline5!.copyWith(
                        color: Resources.color.blackColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Login into your account',
                      style: myTextTheme.subtitle1!.copyWith(
                        color: Resources.color.blackColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 24),
                    Image.asset(
                      Resources.images.ppkpIcon,
                      width: 100,
                    ),
                    const SizedBox(height: 24),
                    TextFieldWidget(
                      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      controller: controller.nameC,
                      keyboardType: TextInputType.name,
                      readOnly: false,
                      style: myTextTheme.subtitle1!.copyWith(
                        color: Resources.color.blackColor
                      ),
                      text: "Username",
                    ),
                    PasswordTextFieldWidget(
                      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      controller: controller.passwordC,
                      isHiddenController: controller.isHidden,
                      style: myTextTheme.subtitle1!.copyWith(
                        color: Resources.color.blackColor
                      ),
                      text: "Password",
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                        width: Get.width,
                        height: 60,
                        decoration: shadowDecoration(),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.loginEmail();
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Resources.color.greenColor3
                              ),
                              overlayColor: MaterialStateProperty.all(
                                Resources.color.greenColor6
                              ),
                              foregroundColor: MaterialStateProperty.all(
                                Resources.color.whiteColor
                              ),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                )
                              ),
                            ),
                            child: Text(
                              controller.isLoading.isFalse ? "Login" : "Loading...",
                              style: myTextTheme.button,
                            ),
                          ),
                        ),
                      ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
