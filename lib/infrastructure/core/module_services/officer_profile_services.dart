import 'package:flutter/foundation.dart';

import '../../../domain/profile/model/profile.dart';
import '../const/cache_const.dart';
import '../global_services/cache_Services.dart';

class OfficerProfileServices {
  Profile? officerProfile;

  Future<OfficerProfileServices> init() async {
    officerProfile = await getOfficerProfile();

    return this;
  }

  Future<Profile?> getOfficerProfile() async {
    try {
      final jsonOfficerProfile =
          await CacheServices().readFromCache(CacheConst.KSHB_OFFICER_PROFILE);

      return jsonOfficerProfile != null
          ? Profile.fromJson(jsonOfficerProfile as Map<String, dynamic>)
          : null;
    } catch (e) {
      if (kDebugMode) rethrow;

      return null;
    }
  }

  Future<void> saveOfficerProfile(
    Map<String, dynamic>? savableOfficerProfile,
  ) async {
    if (savableOfficerProfile != null) {
      await CacheServices()
          .writeToCache(CacheConst.KSHB_OFFICER_PROFILE, savableOfficerProfile);
      officerProfile = Profile.fromJson(savableOfficerProfile);
    }
  }

  Future<void> removeOfficerProfile() async {
    await CacheServices().removeCache(CacheConst.KSHB_OFFICER_PROFILE);

    officerProfile = null;
  }
}
