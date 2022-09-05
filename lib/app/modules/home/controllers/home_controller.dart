import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  String linkReferences = "https://stackoverflow.com/questions/56512036/how-do-i-link-http-url-to-flutter-web";
  String linkVehicle = "https://pub.dev/packages/url_launcher";
  String linkReporting = "https://www.figma.com/file/aksNLga75ZUK5OqBvhb2Gy/Tabletop-App?node-id=803%3A9203";
  String linkRealTabletop = "https://www.figma.com/file/aksNLga75ZUK5OqBvhb2Gy/Tabletop-App?node-id=803%3A9203";

  void klikLink(String link) async {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
