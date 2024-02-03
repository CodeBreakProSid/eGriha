import 'package:dartz/dartz.dart';
import 'package:egraha_app/domain/core/failures/failures.dart';
import 'package:egraha_app/domain/login/login_service.dart';
import 'package:egraha_app/domain/login/model/login_response.dart';
import 'package:egraha_app/infrastructure/core/global_services/cache_Services.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../core/const/cache_const.dart';
import '../core/module_services/auth_services.dart';

@LazySingleton(as: LoginService)
class LoginServiceImplementation implements LoginService {
  @override
  Future<Map<String, dynamic>> getDetailsFromCache() async {
    final Map<String, dynamic> credentials = {};
    final String? userName =
        await CacheServices().readFromCache(CacheConst.APP_USERNAME);
    final String? password =
        await CacheServices().readFromCache(CacheConst.APP_PASSWORD);

    credentials.addAll({CacheConst.APP_USERNAME: userName});
    credentials.addAll({CacheConst.APP_PASSWORD: password});

    return credentials;
  }

  @override
  Future<Either<MainFailures, LoginResponse>> logIn({
    required String userName,
    required String password,
    required bool isChecked,
  }) async {
    try {
      return AuthServices.loginApiCall(
        username: userName,
        password: password,
        isChecked: isChecked,
      );
    } catch (e) {
      if (kDebugMode) rethrow;

      return Left(MainFailures.clientFailure(responseMessage: e.toString()));
    }
  }
}
