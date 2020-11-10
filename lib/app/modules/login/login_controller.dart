import 'package:contact/app/routes/app_pages.dart';
import 'package:contact/common/controllers/loading_controller.dart';
import 'package:contact/data/repositories/token_repository.dart';
import 'package:contact/data/repositories/user_repository.dart';
import 'package:get/get.dart';
import 'package:contact/common/extensions/extensions.dart';

class LoginController extends GetxController with LoadingController {
  final UserRepository _userRepository;

  final TokenRepository _tokenRepository;

  final email = ''.obs;

  final password = ''.obs;

  LoginController(
    this._userRepository,
    this._tokenRepository,
  );

  Future<void> login() => () async {
        final loginRes = await _userRepository.login(
          username: email.value,
          password: password.value,
        );

        if (loginRes.code == 0) {
          await _tokenRepository.saveToken(loginRes.accessToken);

          Get.toNamed(Routes.HOME);
        } else {
          Get.snackbar('Error', loginRes.message);
        }
      }.loading(isLoading).catchError(
            (error) =>
                Get.snackbar('Error', 'Unknown error! Please try again.'),
          );
}
