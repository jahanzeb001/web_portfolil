import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfilio/screens/component/global.dart';
import 'package:my_portfilio/screens/controller/main_controller.dart';
import 'package:my_portfilio/utils/colors.dart';
import 'package:my_portfilio/utils/const.dart';

class MobileScreen extends StatelessWidget {
  MobileScreen({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var mainController = Get.put(MainController());
    return Scaffold(
      key: _scaffoldKey,
      drawer: Obx(() => Drawer(
            child: Container(
              color: bloackColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 30),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: whiteColor),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(300),
                        child: Image.asset("assets/images/img.jpg"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "JAHANZEB AFSAR",
                      style: TextStyle(
                          color: whiteColor,
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "FULL STACK MOBILE APP DEVELOPER",
                      style: TextStyle(
                          color: whiteColor,
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.w300,
                          fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Divider(
                      color: whiteColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: MouseRegion(
                      onEnter: (val) {},
                      onExit: (val) {},
                      child: GestureDetector(
                        onTap: () {},
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: MouseRegion(
                      onEnter: (val) {
                        mainController.isWebAppHover.value = true;
                      },
                      onExit: (val) {
                        mainController.isWebAppHover.value = false;
                      },
                      child: GestureDetector(
                        onTap: () {
                          mainController.selectedIndex.value = 1;
                        },
                        child: Text(
                          "Desktop & Web",
                          style: TextStyle(
                              color: mainController.isWebAppHover.value
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
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: MouseRegion(
                      onEnter: (val) {
                        mainController.isAboutAppHover.value = true;
                      },
                      onExit: (val) {
                        mainController.isAboutAppHover.value = false;
                      },
                      child: GestureDetector(
                        onTap: () {
                          mainController.selectedIndex.value = 2;
                        },
                        child: Text(
                          "About",
                          style: TextStyle(
                              color: mainController.isAboutAppHover.value
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
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: MouseRegion(
                      onEnter: (val) {
                        mainController.isArticlesAppHover.value = true;
                      },
                      onExit: (val) {
                        mainController.isArticlesAppHover.value = false;
                      },
                      child: Text(
                        "Article",
                        style: TextStyle(
                            color: mainController.isArticlesAppHover.value
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
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MouseRegion(
                          onEnter: (v) {
                            mainController.isInstagrameHover.value = true;
                          },
                          onExit: (v) {
                            mainController.isInstagrameHover.value = false;
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: greyColor.withOpacity(0.3),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  mainController.isInstagrameHover.value
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
                            mainController.isTwitterHover.value = true;
                          },
                          onExit: (v) {
                            mainController.isTwitterHover.value = false;
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: greyColor.withOpacity(0.3),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  mainController.isTwitterHover.value
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
                            mainController.isLinkedInHover.value = true;
                          },
                          onExit: (v) {
                            mainController.isLinkedInHover.value = false;
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: greyColor.withOpacity(0.3),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  mainController.isLinkedInHover.value
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
                            mainController.isGithubHover.value = true;
                          },
                          onExit: (v) {
                            mainController.isGithubHover.value = false;
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: greyColor.withOpacity(0.3),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  mainController.isGithubHover.value
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
                            mainController.isYoutubeHover.value = true;
                          },
                          onExit: (v) {
                            mainController.isYoutubeHover.value = false;
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: greyColor.withOpacity(0.3),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  mainController.isYoutubeHover.value
                                      ? 5.0
                                      : 8.0),
                              child: Image.asset(
                                "assets/images/play.png",
                                color: whiteColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: bloackColor,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "JAHANZEB AFSAR",
                      style: TextStyle(
                          color: whiteColor,
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      "FULL STACK MOBILE APP DEVELOPER",
                      style: TextStyle(
                          color: whiteColor,
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.w300,
                          fontSize: 10),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: whiteColor,
                    )),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: appBox(
                  image: "assets/images/lms.png",
                  appTitle: "CLOUD CAMPUS",
                  description: "THE EDUCATION GENIUS",
                  btnText: "CHECKOUT",
                  onpreesed: () {},
                  bgColor: const Color.fromARGB(255, 10, 71, 13),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: appBox(
                  image: "assets/images/marina.png",
                  appTitle: "GULBERG MARINA",
                  description: "THE COMPLETE PROPERTY DEALING SOLUTION ",
                  btnText: "CHECKOUT",
                  onpreesed: () {},
                  bgColor: Colors.blue,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: QuotesWid(
                    "To play so as to be relaxed and refreshed for work is not to play, and no work is well and finely done unless it, too, is a form of play.",
                    "Alan Watts"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: appBox(
                  image: "assets/images/respo.png",
                  appTitle: "WAITER APP INTEGRATED RESTURANT",
                  description:
                      "CONNECT YOUR ORDER TAKING <KITCHEN AND BILL COUNTER ",
                  btnText: "CHECKOUT",
                  onpreesed: () {},
                  bgColor: const Color.fromRGBO(240, 130, 0, 1),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: appBox(
                  image: "assets/images/gomaids.png",
                  appTitle: "GOMAIDS",
                  description: "BOOK MAIDZ FOR YOUR HOME",
                  btnText: "CHECKOUT",
                  onpreesed: () {},
                  bgColor: const Color.fromRGBO(25, 66, 148, 1),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: QuotesWid(
                    "Work as hard as you possibly can on at least one thing and see what happens.",
                    "Jordan B. Peterson"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: appBox(
                  image: "assets/images/goMaidzPro.png",
                  appTitle: "GOMAIDS PRO",
                  description: "ADMIN APP FOR BOOK MAIDZ FOR YOUR HOME",
                  btnText: "CHECKOUT",
                  onpreesed: () {},
                  bgColor: const Color.fromRGBO(147, 72, 104, 1),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
