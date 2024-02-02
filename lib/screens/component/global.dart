import 'package:flutter/material.dart';
import 'package:my_portfilio/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

/////////  app items widgets
Widget appBox(
    {String? image,
    String? appTitle,
    String? description,
    String? btnText,
    Function? onpreesed,
    Color? bgColor}) {
  return Container(
    margin: const EdgeInsets.only(top: 30),
    color: whiteColor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: bgColor,
          child: Container(
              height: 500,
              margin: const EdgeInsets.only(
                  left: 40, right: 40, top: 20, bottom: 20),
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    image ?? "",
                    fit: BoxFit.cover,
                  ))),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            appTitle ?? "",
            style: TextStyle(
                color: bloackColor,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            description ?? "",
            style: TextStyle(
                color: greyColor,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w300,
                fontSize: 12),
          ),
        ),
        Container(
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: bloackColor,
              border: Border.all(color: bloackColor, width: 2)),
          child: Center(
            child: Text(
              btnText ?? "",
              style: TextStyle(color: whiteColor, fontFamily: 'Ubuntu'),
            ),
          ),
        )
      ],
    ),
  );
}

/////////////  Qoutes
Widget QuotesWid(String qouteText, String author) {
  return Container(
    margin: const EdgeInsets.only(top: 30),
    color: whiteColor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Text(
            qouteText,
            style: TextStyle(
                color: bloackColor,
                fontFamily: 'Ubuntu',
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
        ),
        Text(
          author,
          style: TextStyle(
              color: greyColor,
              fontFamily: 'Ubuntu',
              fontSize: 14,
              fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    ),
  );
}

//////////////////  url launcher
void launchLinkedInProfile(String link) async {
  var url = link;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
