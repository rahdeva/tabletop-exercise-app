import 'package:get/get.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/area-concept/bindings/area_concept_binding.dart';
import '../modules/area-concept/views/area_concept_view.dart';
import '../modules/contact/bindings/contact_binding.dart';
import '../modules/contact/views/contact_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lecturer/bindings/lecturer_binding.dart';
import '../modules/lecturer/views/lecturer_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/tabletop-exercise/bindings/tabletop_exercise_binding.dart';
import '../modules/tabletop-exercise/views/tabletop_exercise_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT,
      page: () => const ContactView(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: _Paths.LECTURER,
      page: () => const LecturerView(),
      binding: LecturerBinding(),
    ),
    GetPage(
      name: _Paths.TABLETOP_EXERCISE,
      page: () => const TabletopExerciseView(),
      binding: TabletopExerciseBinding(),
    ),
    GetPage(
      name: _Paths.AREA_CONCEPT,
      page: () => AreaConceptView(),
      binding: AreaConceptBinding(),
    ),
  ];
}
