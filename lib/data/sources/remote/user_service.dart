import 'package:contact/common/config/api.dart';
import 'package:contact/data/models/responses/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'user_service.g.dart';

@RestApi()
abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @POST(UserApi.SYSTEM_LOGIN)
  Future<LoginResponse> login({
    @Field() String userLogin,
    @Field() String password,
  });
}
