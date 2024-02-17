// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:egraha_app/domain/profile/model/profile.dart';
import 'package:egraha_app/infrastructure/core/const/api_end_points.dart';
import 'package:egraha_app/infrastructure/core/global_services/dio_services.dart';
import 'package:egraha_app/infrastructure/core/module_services/officer_profile_services.dart';

import '../../../domain/core/failures/failures.dart';
import '../global_services/token_services.dart';

class ProfileServices {
  static final dioService = DioServices();

  static Future<Either<MainFailures, Profile>> getProfileDetails() async {
    try {
      Profile? cachedOfficerProfile =
          await OfficerProfileServices().getOfficerProfile();
      if (cachedOfficerProfile != null) {
        return Right(cachedOfficerProfile);
      } else {
        String? token = await TokenServies().readTokenFromCache();

        final Response response = await dioService.get(
          ApiEndPoints.OFFICER_PROFILE,
          accessToken: token,
        );

        if (response.statusCode == 200) {
          final jsonToProfileResponseObj = Profile.fromJson(response.data);

          await OfficerProfileServices().saveOfficerProfile(response.data);

          return Right(jsonToProfileResponseObj);
        } else {
          return const Left(MainFailures.serverFailure());
        }
      }
    } on DioException catch (e) {
      return Left(MainFailures.clientFailure(
          responseMessage: e.message ?? 'Dio exception'));
    } catch (e) {
      return Left(MainFailures.clientFailure(responseMessage: e.toString()));
    }
  }

  static Future<Either<MainFailures, Profile>> updateProfile({
    required dynamic officerProfileData,
    required int fieldType,
  }) async {
    try {
      String? token = await TokenServies().readTokenFromCache();
      FormData newProfleData = FormData();

      switch (fieldType) {
        case 1:
          newProfleData = FormData.fromMap({
            'full_name': officerProfileData,
          });

          break;
        case 2:
          newProfleData = FormData.fromMap({
            'gender': officerProfileData,
          });
          break;
        case 3:
          newProfleData = FormData.fromMap({
            'phone_number': officerProfileData,
          });
          break;
        case 4:
          newProfleData = FormData.fromMap({
            'email': officerProfileData,
          });
          break;
        case 5:
          newProfleData = FormData.fromMap({
            'address': officerProfileData,
          });
          break;
        case 6:
          officerProfileData != null
              ? newProfleData = FormData.fromMap({
                  'profile_picture': MultipartFile.fromBytes(
                    await officerProfileData.readAsBytes(),
                    filename: officerProfileData.name,
                  )
                })
              : newProfleData = FormData.fromMap({
                  'profile_picture': '',
                });
          break;
        default:
          print('Unknown input.');
      }
      final Response response = await dioService.patch(
        ApiEndPoints.OFFICER_PROFILE,
        accessToken: token,
        data: newProfleData,
      );

      if (response.statusCode == 200) {
        final jsonToProfileResponseObj = Profile.fromJson(response.data);

        await OfficerProfileServices().saveOfficerProfile(response.data);

        return Right(jsonToProfileResponseObj);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } on DioException catch (e) {
      return Left(MainFailures.clientFailure(
          responseMessage: e.message ?? 'Dio exception'));
    } catch (e) {
      print(e.toString());
      return Left(MainFailures.clientFailure(responseMessage: e.toString()));
    }
  }
}
