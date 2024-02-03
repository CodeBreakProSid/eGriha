import 'package:dartz/dartz.dart';

import '../core/failures/failures.dart';
import 'model/login_response.dart';

abstract class LoginService {
  Future<Either<MainFailures, LoginResponse>> logIn({
    required String userName,
    required String password,
    required bool isChecked,
  });

  Future<Map<String, dynamic>> getDetailsFromCache();
}
