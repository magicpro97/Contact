import 'package:contact/app/routes/app_pages.dart';
import 'package:contact/common/controllers/loading_controller.dart';
import 'package:contact/data/repositories/user_repository.dart';
import 'package:get/get.dart';
import 'package:contact/common/extensions/extensions.dart';

class SplashController extends GetxController with LoadingController {
  final UserRepository _userRepository;

  SplashController(this._userRepository);

  @override
  void onInit() {
    super.onInit();

    Future.delayed(Duration(seconds: 3), () {
      checkAuthentication();
    }).loading(isLoading);
  }

  void checkAuthentication() {
    printInfo(info: "isLogin:::${_userRepository.isLogin()}");

    if (_userRepository.isLogin()) {
      Get.offNamed(Routes.HOME);
    } else {
      Get.offNamed(Routes.WELCOME);
    }
  }
}
