part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfileScreenData() = _GetProfileScreenData;
  const factory ProfileEvent.profileUpdateOnclick({
    required dynamic profileData,
    required int fieldType,
  }) = _ProfileUpdateOnclick;
}
