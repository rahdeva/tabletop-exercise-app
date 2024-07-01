import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tabletop_exercise_app/app/routes/app_pages.dart';
import 'package:tabletop_exercise_app/app/themes/resources.dart';
import 'package:tabletop_exercise_app/app/themes/text_theme.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);

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
                        onTap: (){},
                        child: Text(
                          "About",
                          style: myTextTheme.headline6!.copyWith(
                            color: Resources.color.whiteColor,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                      const SizedBox(width: 48),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.LECTURER),
                        child: Text(
                          "Personel",
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
                                const SizedBox(height: 80),
                                GradientText(
                                  "About Aplication",
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
                                  "The tabletop exercise aplication is make for smart arff to test of the integration and capability of emergency response resources without the expense and disruption of services incurred by a full-scale exercise. The exercise may be held as a co-ordination exercise prior to the full-scale exercise, or it may be held at intervening times in order to reconfirm procedures, policy, telephone numbers, radio frequencies, and changes in key personnel. The tabletop exercise is the simplest type of drill to stage, requiring only a meeting room, a large scale map of the airport, and a senior representative of each participating unit in attendance. A probable accident location is selected on the map and each participant describes what actions their unit would take to respond. This exercise will quickly reveal operational problems, such as conflicting communications frequencies, lack of equipment, confusing terminology and areas of jurisdiction. These exercises should be held semiannually, but not coincidental with other exercises.",
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
                      const SizedBox(height: 750),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          bottom: 0,
                          right: 120,
                          child: Image.asset(
                            Resources.images.fireImages,
                            width: 700,
                            color: Resources.color.greenColor8,
                          ),
                        ),
                        Positioned(
                          left: 240,
                          bottom: 0,
                          child: CircleAvatar(
                            backgroundColor: Resources.color.greenColor4,
                            radius: 50,
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
                                    "                                              ", 
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 50),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: CircleAvatar(
                                          backgroundColor: Resources.color.greenColor3,
                                          radius: 100,
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Resources.color.greenColor2,
                                        radius: 200,
                                      ),
                                      Transform(
                                        alignment: Alignment.center,
                                        transform: Matrix4.rotationY(math.pi),
                                        child: Image.asset(
                                          Resources.images.damkarImages,
                                          width: 500,
                                          
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 32,
                                        right: 32,
                                        child: CircleAvatar(
                                          backgroundColor: Resources.color.greenColor3,
                                          radius: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width/2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 80),
                                      GradientText(
                                        "Tentang Aplikasi",
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
                                        "Tabletop Excercise dibuat untuk smart arff untuk menguji integrasi dan kemampuan sumber daya tanggap darurat tanpa biaya dan gangguan layanan yang ditimbulkan oleh latihan skala penuh. Latihan dapat diadakan sebagai koordinasi latihan sebelum latihan skala penuh, atau mungkin diadakan pada waktu intervensi untuk menegaskan kembali prosedur, kebijakan,nomor telepon, frekuensi radio, dan perubahan personel kunci. Tabletop Excercise adalah jenis latihan paling sederhana untuk dipentaskan, hanya membutuhkan ruang pertemuan, peta skala besardari bandara, dan perwakilan senior dari setiap unit yang berpartisipasi yang hadir. Kemungkinan lokasi kecelakaan adalahdipilih pada peta dan setiap peserta menjelaskan tindakan apa yang akan diambil unit mereka untuk merespons. Latihan ini akan dengan cepat mengungkapkan masalah operasional, seperti frekuensi komunikasi yang bertentangan, kurangnya peralatan, membingungkanterminologi dan wilayah yurisdiksi. Latihalatihan ini harus diadakan setiap setengah tahun, tetapi tidak secara kebetulan dengan yang lainlatihan.",
                                        style: myTextTheme.headline5!.copyWith(
                                          color: Resources.color.blueColor2
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                ),                     
                              ],
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
