import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt selectedIndex = 0.obs;

  RxBool isWebAppHover = false.obs;
  RxBool isAboutAppHover = false.obs;
  RxBool isArticlesAppHover = false.obs;
  RxBool isPackageAppHover = false.obs;
  RxBool isInstagrameHover = false.obs;
  RxBool isTwitterHover = false.obs;
  RxBool isLinkedInHover = false.obs;
  RxBool isGithubHover = false.obs;
  RxBool isYoutubeHover = false.obs;

  ///////   Apps Store Link Button Valu
  RxBool isCloudeLmsBtnHover = false.obs;
  RxBool isRespoBtnHover = false.obs;
  RxBool isMarinaBtnHover = false.obs;
  RxBool isGoMaidzBtnHover = false.obs;
  RxBool isGoMaidzProBtnHover = false.obs;
}
