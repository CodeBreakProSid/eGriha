import 'package:dartz/dartz.dart';
import 'package:egraha_app/domain/core/failures/failures.dart';
import 'package:egraha_app/domain/profile/model/profile.dart';
import 'package:egraha_app/domain/profile/profile_service.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../core/module_services/profile_services.dart';

@LazySingleton(as: ProfileService)
class ProfileServiceImplementation implements ProfileService {
  @override
  Future<Either<MainFailures, Profile>> getProfileDetails() async {
    try {
      return await ProfileServices.getProfileDetails();
    } catch (e) {
      if (kDebugMode) rethrow;

      return Left(MainFailures.clientFailure(responseMessage: e.toString()));
    }
  }

  @override
  Future<Either<MainFailures, Profile>> updateProfile({
    required officerProfileData,
    required fieldType,
  }) async {
    try {
      return await ProfileServices.updateProfile(
        officerProfileData: officerProfileData,
        fieldType: fieldType,
      );
    } catch (e) {
      if (kDebugMode) rethrow;

      return Left(MainFailures.clientFailure(responseMessage: e.toString()));
    }
  }
}
