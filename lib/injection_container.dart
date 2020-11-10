import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'common/config/api.dart';
import 'data/repositories/token_repository.dart';
import 'data/repositories/user_repository.dart';
import 'data/sources/cache/cached_box.dart';
import 'data/sources/remote/user_service.dart';

Future<void> setUp() async {
  await Get.putAsync(
        () async {
      await GetStorage.init();
      return GetStorage();
    },
    permanent: true,
  );

  Get.lazyPut<Dio>(
        () => Dio()..interceptors.add(PrettyDioLogger()),
    fenix: true,
  );

  Get.lazyPut<Logger>(
        () => Logger(),
    fenix: true,
  );

  Get.lazyPut(
        () => UserService(
      Get.find(),
      baseUrl: UserApi.baseUrl,
    ),
    fenix: true,
  );

  Get.lazyPut<CachedBox>(
        () => CachedBoxImpl(Get.find()),
    fenix: true,
  );

  Get.lazyPut<UserRepository>(
        () => UserRepositoryImpl(
      Get.find(),
      Get.find(),
    ),
    fenix: true,
  );

  Get.lazyPut<TokenRepository>(
        () => TokenRepositoryImpl(Get.find()),
    fenix: true,
  );
}
