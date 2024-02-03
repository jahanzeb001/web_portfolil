// ignore_for_file: unused_element

import 'package:url_launcher/url_launcher.dart';

void openPlayStore(String storeUrl) async {
  print("url launcher is launched");
  var url = storeUrl;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
