import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfilio/utils/colors.dart';
import 'package:my_portfilio/utils/const.dart';
import 'package:my_portfilio/screens/component/global.dart';
import 'package:my_portfilio/screens/controller/main_controller.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
    required this.landingPageController,
  });

  final MainController landingPageController;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          width: 300,
          color: bloackColor,
          height: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 90),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300), color: whiteColor),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset("assets/images/img.jpg"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                "JAHANZEB AFSAR",
                style: TextStyle(
                    color: whiteColor,
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                "FULL STACK MOBILE APP DEVELOPER",
                style: TextStyle(
                    color: whiteColor,
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w300,
                    fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 50),
              child: MouseRegion(
                onEnter: (val) {},
                onExit: (val) {},
                child: GestureDetector(
                  onTap: () {
                    landingPageController.selectedIndex.value = 0;
                  },
                  child: Text(
                    "Mobile Apps",
                    style: TextStyle(
                        color: whiteColor,
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 50, top: 20),
            //   child: MouseRegion(
            //     onEnter: (val) {
            //       landingPageController.isWebAppHover.value = true;
            //     },
            //     onExit: (val) {
            //       landingPageController.isWebAppHover.value = false;
            //     },
            //     child: GestureDetector(
            //       onTap: () {
            //         landingPageController.selectedIndex.value = 1;
            //       },
            //       child: Text(
            //         "Desktop & Web",
            //         style: TextStyle(
            //             color: landingPageController.isWebAppHover.value
            //                 ? whiteColor
            //                 : greyColor,
            //             fontFamily: "Ubuntu",
            //             fontWeight: FontWeight.w300,
            //             fontSize: 16),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 20),
              child: MouseRegion(
                onEnter: (val) {
                  landingPageController.isPackageAppHover.value = true;
                },
                onExit: (val) {
                  landingPageController.isPackageAppHover.value = false;
                },
                child: GestureDetector(
                  onTap: () {
                    landingPageController.selectedIndex.value = 1;
                  },
                  child: Text(
                    "Packages",
                    style: TextStyle(
                        color: landingPageController.isPackageAppHover.value
                            ? whiteColor
                            : greyColor,
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 20),
              child: MouseRegion(
                onEnter: (val) {
                  landingPageController.isAboutAppHover.value = true;
                },
                onExit: (val) {
                  landingPageController.isAboutAppHover.value = false;
                },
                child: GestureDetector(
                  onTap: () {
                    landingPageController.selectedIndex.value = 2;
                  },
                  child: Text(
                    "About",
                    style: TextStyle(
                        color: landingPageController.isAboutAppHover.value
                            ? whiteColor
                            : greyColor,
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 20),
              child: MouseRegion(
                onEnter: (val) {
                  landingPageController.isArticlesAppHover.value = true;
                },
                onExit: (val) {
                  landingPageController.isArticlesAppHover.value = false;
                },
                child: Text(
                  "Article",
                  style: TextStyle(
                      color: landingPageController.isArticlesAppHover.value
                          ? whiteColor
                          : greyColor,
                      fontFamily: "Ubuntu",
                      fontWeight: FontWeight.w300,
                      fontSize: 16),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MouseRegion(
                    onEnter: (v) {
                      landingPageController.isInstagrameHover.value = true;
                    },
                    onExit: (v) {
                      landingPageController.isInstagrameHover.value = false;
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: greyColor.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: EdgeInsets.all(
                            landingPageController.isInstagrameHover.value
                                ? 5.0
                                : 8.0),
                        child: Image.asset(
                          "assets/images/instagram.png",
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (v) {
                      landingPageController.isTwitterHover.value = true;
                    },
                    onExit: (v) {
                      landingPageController.isTwitterHover.value = false;
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: greyColor.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: EdgeInsets.all(
                            landingPageController.isTwitterHover.value
                                ? 5.0
                                : 8.0),
                        child: Image.asset(
                          "assets/images/twitter.png",
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (v) {
                      landingPageController.isLinkedInHover.value = true;
                    },
                    onExit: (v) {
                      landingPageController.isLinkedInHover.value = false;
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: greyColor.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: EdgeInsets.all(
                            landingPageController.isLinkedInHover.value
                                ? 5.0
                                : 8.0),
                        child: GestureDetector(
                          onTap: () async {
                            launchLinkedInProfile(linkedInUrl);
                          },
                          child: Image.asset(
                            "assets/images/linkedin.png",
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (v) {
                      landingPageController.isGithubHover.value = true;
                    },
                    onExit: (v) {
                      landingPageController.isGithubHover.value = false;
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: greyColor.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: EdgeInsets.all(
                            landingPageController.isGithubHover.value
                                ? 5.0
                                : 8.0),
                        child: Image.asset(
                          "assets/images/github.png",
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (v) {
                      landingPageController.isYoutubeHover.value = true;
                    },
                    onExit: (v) {
                      landingPageController.isYoutubeHover.value = false;
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: greyColor.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: EdgeInsets.all(
                            landingPageController.isYoutubeHover.value
                                ? 5.0
                                : 8.0),
                        child: Image.asset(
                          "assets/images/play.png",
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ]),
        ));
  }
}
