import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tabletop_exercise_app/app/routes/app_pages.dart';
import 'package:tabletop_exercise_app/app/themes/color_theme.dart';
import 'package:tabletop_exercise_app/app/themes/text_theme.dart';
import 'package:tabletop_exercise_app/app/widgets/form/password_text_field_widget.dart';
import 'package:tabletop_exercise_app/app/widgets/form/text_field_widget.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 700) {
          return const ContentRegister();
        } else if (constraints.maxWidth <= 1000) {
          return const ContentRegister();
        } else if (constraints.maxWidth <= 1400) {
          return const ContentRegister();
        } else {
          return const ContentRegister();
        }
      }),
    );
  }
}

class ContentRegister extends GetView<RegisterController> {
  const ContentRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Resources.appImages.bgImages,
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 500),
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Get Started With Tabletop Excercise',
              style: myTextTheme.headline5!.copyWith(
                color: Resources.color.whiteColor,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 32),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 0, 40, 16),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Resources.color.whiteColor,
                      thickness: 2,
                      height: 20,
                    ),
                  ),
                  Text(
                    "    Or Continue With    ", 
                    style: myTextTheme.caption!.copyWith(
                      color: Resources.color.whiteColor,
                    )
                  ),
                  Expanded(
                    child: Divider(
                      color: Resources.color.whiteColor,
                      thickness: 2,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              controller: controller.nameC,
              keyboardType: TextInputType.name,
              readOnly: false,
              style: myTextTheme.subtitle1!.copyWith(color: Resources.color.blackColor),
              text: "Full Name",
            ),
            TextFieldWidget(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              controller: controller.emailC,
              keyboardType: TextInputType.emailAddress,
              readOnly: false,
              style: myTextTheme.subtitle1!.copyWith(color: Resources.color.blackColor),
              text: "Email",
            ),
            PasswordTextFieldWidget(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              controller: controller.passwordC,
              isHiddenController: controller.isHidden,
              style: myTextTheme.subtitle1!.copyWith(color: Resources.color.blackColor),
              text: "Password",
            ),
            PasswordTextFieldWidget(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              controller: controller.confirmPasswordC,
              isHiddenController: controller.isHidden2,
              style: myTextTheme.subtitle1!.copyWith(color: Resources.color.blackColor),
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
                    // if (controller.isLoading.isFalse) {
                    //   controller.loginEmail();
                    // }
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
                    controller.isLoading.isFalse ? "Create Account" : "Loading...",
                    style: myTextTheme.button,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have account?",
                  style: myTextTheme.bodyText1!.copyWith(
                    color: Resources.color.whiteColor,
                  )
                ),
                TextButton(
                  onPressed: () => Get.offAllNamed(Routes.LOGIN),
                  child: Text(
                    "Login!",
                    style: myTextTheme.bodyText1!.copyWith(
                      color: Resources.color.whiteColor,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    )
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
