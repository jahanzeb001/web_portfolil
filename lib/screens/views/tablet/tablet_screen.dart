import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfilio/screens/component/global.dart';
import 'package:my_portfilio/screens/controller/main_controller.dart';
import 'package:my_portfilio/utils/colors.dart';
import 'package:my_portfilio/utils/const.dart';
import 'package:my_portfilio/utils/launch.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mainController = Get.put(MainController());
    return Column(
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
                  onPressed: () {},
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: appBox(
                                image: "assets/images/lms.png",
                                appTitle: "CLOUD CAMPUS",
                                description: "THE EDUCATION GENIUS",
                                btnText: "CHECKOUT",
                                onpreesed: () {
                                  openPlayStore(cloudeCampus);
                                },
                                bgColor: const Color.fromARGB(255, 10, 71, 13),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: appBox(
                                image: "assets/images/marina.png",
                                appTitle: "GULBERG MARINA",
                                description:
                                    "THE COMPLETE PROPERTY DEALING SOLUTION ",
                                btnText: "CHECKOUT",
                                onpreesed: () {
                                  openPlayStore(gulbergMarina);
                                },
                                bgColor: Colors.blue,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: QuotesWid(
                                  "To play so as to be relaxed and refreshed for work is not to play, and no work is well and finely done unless it, too, is a form of play.",
                                  "Alan Watts"),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: appBox(
                                image: "assets/images/goMaidzPro.png",
                                appTitle: "GOMAIDS PRO",
                                description:
                                    "ADMIN APP FOR BOOK MAIDZ FOR YOUR HOME",
                                btnText: "CHECKOUT",
                                onpreesed: () {
                                  openPlayStore(goMaidzProvider);
                                },
                                bgColor: const Color.fromRGBO(147, 72, 104, 1),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: QuotesWid(
                                "Work as hard as you possibly can on at least one thing and see what happens.",
                                "Jordan B. Peterson"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: appBox(
                              image: "assets/images/respo.png",
                              appTitle: "WAITER APP INTEGRATED RESTURANT",
                              description:
                                  "CONNECT YOUR ORDER TAKING <KITCHEN AND BILL COUNTER ",
                              btnText: "CHECKOUT",
                              onpreesed: () {
                                openPlayStore(respoWaiter);
                              },
                              bgColor: const Color.fromRGBO(240, 130, 0, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: appBox(
                              image: "assets/images/gomaids.png",
                              appTitle: "GOMAIDS",
                              description: "BOOK MAIDZ FOR YOUR HOME",
                              btnText: "CHECKOUT",
                              onpreesed: () {
                                openPlayStore(gomaidzTaker);
                              },
                              bgColor: const Color.fromRGBO(25, 66, 148, 1),
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.green,
                      ))
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
