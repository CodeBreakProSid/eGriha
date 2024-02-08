import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
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
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'profile_picture')
  String? profilePicture;
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'thumbnails')
  String? thumbnails;
  @JsonKey(name: 'gender_name')
  String? genderName;

  Profile({
    this.id,
    this.gender,
    this.fullName,
    this.address,
    this.phoneNumber,
    this.email,
    this.profilePicture,
    this.username,
    this.thumbnails,
    this.genderName,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return _$ProfileFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
