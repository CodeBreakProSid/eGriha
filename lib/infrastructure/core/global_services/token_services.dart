import 'package:egraha_app/infrastructure/core/global_services/cache_Services.dart';

import '../const/cache_const.dart';

class TokenServies {
  Future<bool> isTokenExistOnCache() async {
    final token = await CacheServices().readFromCache(CacheConst.KEY);

    return token != null ? true : false;
  }

  Future<void> writeTokenToCache(String token) async {
    await CacheServices().writeToCache(CacheConst.KEY, token);
  }

  Future<String?> readTokenFromCache() async {
    final String? tempToken =
        await CacheServices().readFromCache(CacheConst.KEY);

    if (tempToken != null) {
      //String token = 'Token $tempToken';
      return tempToken;
    }

    return null;
  }
}
