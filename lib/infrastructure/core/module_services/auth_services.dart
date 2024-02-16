import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:egraha_app/infrastructure/core/global_services/dio_services.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/core/failures/failures.dart';
import '../../../domain/login/model/login_response.dart';
import '../../../presentation/core/const/ui_const.dart';
import '../const/api_end_points.dart';
import '../const/cache_const.dart';
import '../global_services/cache_Services.dart';
import 'officer_profile_services.dart';
import 'officer_services.dart';

class AuthServices {
  //Creating Dio object
  static final dioService = DioServices();

  //Officer authentication API call
  static Future<Either<MainFailures, LoginResponse>> loginApiCall({
    required String username,
    required String password,
    required bool isChecked,
  }) async {
    try {
      //Making Forma data for API call
      var loginCredential = FormData.fromMap({
        'username': username,
        'password': password,
      });

      //Check if remember me checkbox is checked by user
      //if checked write user name & password to cache
      //else write null to cache
      if (isChecked) {
        await CacheServices().writeToCache(CacheConst.APP_USERNAME, username);
        await CacheServices().writeToCache(CacheConst.APP_PASSWORD, password);
      } else {
        await CacheServices().writeToCache(CacheConst.APP_USERNAME, null);
        await CacheServices().writeToCache(CacheConst.APP_PASSWORD, null);
      }

      //Login API call using username & password
      final Response response = await dioService.post(
        ApiEndPoints.CREATE_TOKEN,
        data: loginCredential,
      );

      //Check response is success or not
      //base on the resonse return the response object
      // or error object
      if (response.statusCode == 200 || response.statusCode == 201) {
        //Convert json to LoginResponse object using fromJson method
        final jsonTologinResponseObj = LoginResponse.fromJson(response.data);

        //Write token to cache memory with key for future access
        await CacheServices().writeToCache(CacheConst.KEY,
            '${CacheConst.TOKEN_TYPE}${' '}${jsonTologinResponseObj.token!}');

        //Split the user object for the response
        //for savig the officer basic details
        final officerObj = jsonTologinResponseObj.user;

        //Check the officer object has value or not
        //if officer details present write to cache with a key
        //else return error object
        if (officerObj == null) {
          return const Left(MainFailures.serverFailure());
        } else {
          OfficerService().saveOfficer(officerObj);
        }

        return Right(jsonTologinResponseObj);
      } else if (response.statusCode == 400) {
        return Left(MainFailures.clientFailure(
            responseMessage: response.statusMessage ?? ''));
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } on DioException catch (e) {
      return Left(MainFailures.clientFailure(
          responseMessage: e.message ?? 'Dio exception'));
    } catch (e) {
      return Left(MainFailures.clientFailure(responseMessage: e.toString()));
    }
  }

  //Logout function call for officer
  static Future<bool> logoutApiCall() async {
    try {
      //Take the token from the cache memory for api call
      final String token = await CacheServices().readFromCache(CacheConst.KEY);

      //Logout API call event and saved the response
      final Response response = await DioServices().post(
        ApiEndPoints.DELETE_TOKEN,
        accessToken: token,
      );

      if (response.statusCode == 204) {
        //Perform logout actions like
        //Clearing the saved token from cache and remove
        //the officer basic details from cache memory
        await CacheServices().writeToCache(CacheConst.KEY, null);
        await OfficerService().removeOfficer();
        await OfficerProfileServices().removeOfficerProfile();
        indexChangeNotifier = ValueNotifier(1);

        return true;
      } else {
        return false;
      }
    } catch (e) {
      if (kDebugMode) rethrow;

      return false;
    }
  }
}
