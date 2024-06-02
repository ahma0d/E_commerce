import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/network/exception.dart';
import 'package:e_commerce/core/parameter/auth/auth_parameter.dart';
import 'package:e_commerce/core/utils/constance/api_endpoints.dart';
import 'package:e_commerce/core/utils/server/dio_server.dart';

abstract class AuthBaseDataSource {
  Future<Unit> login(LoginParameter parameter);
}

class AuthRemoteDataSource extends AuthBaseDataSource {
  @override
  Future<Unit> login(LoginParameter parameter) async {
    var body = {'email': parameter.email, 'password': parameter.password};
    
      var response = await DioServer.postRequest(
        url: ApiEndpoints.login,
        data: body,
      );
      if (response.statusCode == 200) {
        return Future.value(unit);
      } else {
        throw ServerException();
      }
    
  }
}
