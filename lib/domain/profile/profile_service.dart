import 'package:dartz/dartz.dart';

import '../core/failures/failures.dart';
import 'model/profile.dart';

abstract class ProfileService {
  Future<Either<MainFailures, Profile>> getProfileDetails();
  Future<Either<MainFailures, Profile>> updateProfile({
    required dynamic officerProfileData,
    required int fieldType,
  });
}
