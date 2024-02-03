import 'package:egraha_app/infrastructure/core/global_services/cache_Services.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/login/model/login_response.dart';
import '../const/cache_const.dart';

class OfficerService {
  User? officer;
  Future<OfficerService> init() async {
    officer = await getOfficer();

    return this;
  }

  Future<User?> getOfficer() async {
    try {
      final jsonOfficer =
          await CacheServices().readFromCache(CacheConst.KSHB_OFFICER);

      return jsonOfficer != null
          ? User.fromJson(jsonOfficer as Map<String, dynamic>)
          : null;
    } catch (e) {
      if (kDebugMode) rethrow;

      return null;
    }
  }

  Future<void> saveOfficer(User? savableOfficer) async {
    if (savableOfficer != null) {
      await CacheServices()
          .writeToCache(CacheConst.KSHB_OFFICER, savableOfficer.toJson());
      officer = savableOfficer;
    }
  }

  Future<void> removeOfficer() async {
    await CacheServices().removeCache(CacheConst.KSHB_OFFICER);

    officer = null;
  }
}
