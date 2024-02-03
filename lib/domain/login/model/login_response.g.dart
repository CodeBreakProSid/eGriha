// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      expiry: json['expiry'] == null
          ? null
          : DateTime.parse(json['expiry'] as String),
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'expiry': instance.expiry?.toIso8601String(),
      'token': instance.token,
      'user': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String?,
      gender: json['gender'] as int?,
      fullName: json['full_name'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      profilePicture: json['profile_picture'] as String?,
      thumbnails: json['thumbnails'] as String?,
      penNumber: json['pen_number'] as String?,
      activeOffice: json['active_office'] as String?,
      activeUserRole: json['active_user_role'] as String?,
      activeOfficeName: json['active_office__name'] as String?,
      activeUserRoleName: json['active_user_role__name'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'gender': instance.gender,
      'full_name': instance.fullName,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'username': instance.username,
      'email': instance.email,
      'profile_picture': instance.profilePicture,
      'thumbnails': instance.thumbnails,
      'pen_number': instance.penNumber,
      'active_office': instance.activeOffice,
      'active_user_role': instance.activeUserRole,
      'active_office__name': instance.activeOfficeName,
      'active_user_role__name': instance.activeUserRoleName,
    };
