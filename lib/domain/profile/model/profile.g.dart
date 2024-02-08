// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      id: json['id'] as String?,
      gender: json['gender'] as int?,
      fullName: json['full_name'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String?,
      profilePicture: json['profile_picture'] as String?,
      username: json['username'] as String?,
      thumbnails: json['thumbnails'] as String?,
      genderName: json['gender_name'] as String?,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'gender': instance.gender,
      'full_name': instance.fullName,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'profile_picture': instance.profilePicture,
      'username': instance.username,
      'thumbnails': instance.thumbnails,
      'gender_name': instance.genderName,
    };
