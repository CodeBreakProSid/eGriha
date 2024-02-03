import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'expiry')
  DateTime? expiry;
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'user')
  User? user;

  LoginResponse({
    this.expiry,
    this.token,
    this.user,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'gender')
  int? gender;
  @JsonKey(name: 'full_name')
  String? fullName;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'profile_picture')
  String? profilePicture;
  @JsonKey(name: 'thumbnails')
  String? thumbnails;
  @JsonKey(name: 'pen_number')
  String? penNumber;
  @JsonKey(name: 'active_office')
  String? activeOffice;
  @JsonKey(name: 'active_user_role')
  String? activeUserRole;
  @JsonKey(name: 'active_office__name')
  String? activeOfficeName;
  @JsonKey(name: 'active_user_role__name')
  String? activeUserRoleName;

  User({
    this.id,
    this.gender,
    this.fullName,
    this.address,
    this.phoneNumber,
    this.username,
    this.email,
    this.profilePicture,
    this.thumbnails,
    this.penNumber,
    this.activeOffice,
    this.activeUserRole,
    this.activeOfficeName,
    this.activeUserRoleName,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
