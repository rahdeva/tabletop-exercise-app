import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  String linkReferences = "https://drive.google.com/drive/folders/1aBm2glzhQhqqmImWlrTnqJ-LvsaopRf2?usp=sharing";
  String linkVehicle = "https://drive.google.com/drive/folders/1lkwnKW6q1CiteLabdc2R4GN5_bw8A1nv?usp=sharing";
  String linkReporting = "https://drive.google.com/drive/folders/12fOSxP2mp_2Ey9kwnMrjBDxqIm4G7Zu-?usp=sharing";
  String linkRealTabletop = "https://sketchfab.com/3d-models/airport-schonefeld-terminal-e1789d9d52ef47efae10905297c1d163";
  String linkInstagram = "https://www.instagram.com/ppkp.poltekbangplg";

  void klikLink(String link) async {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
