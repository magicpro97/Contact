import 'package:contact/data/models/responses/login_response.dart';

import '../sources/cache/cached_box.dart';
import '../sources/remote/user_service.dart';
import 'base_repository.dart';

abstract class UserRepository extends BaseRepository {
  final CachedBox _cachedBox;
  final UserService _userService;

  UserRepository(this._cachedBox, this._userService);

  bool isLogin();

  Future<LoginResponse> login({String username, String password});
}

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(
    CachedBox cachedBox,
    UserService userService,
  ) : super(cachedBox, userService);

  @override
  bool isLogin() {
    final token = _cachedBox.getToken();

    if (token == null || token.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  Future<LoginResponse> login({String username, String password}) =>
      _userService.login(userLogin: username, password: password);
}
