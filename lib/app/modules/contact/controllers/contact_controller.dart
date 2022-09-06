import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactController extends GetxController {
  String linkWA = "https://wa.me/082144335924";
  String linkIG = "https://www.instagram.com/ppkp.poltekbangplg";
  String linkPoltekbang = "https://poltekbangplg.ac.id/";

  void klikLink(String link) async {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
