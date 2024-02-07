part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required String stateID,
    required Profile? officerProfile,
    required bool isLoading,
    required bool hasError,
  }) = _ProfileState;

  factory ProfileState.initial() {
    return const ProfileState(
      stateID: '0',
      officerProfile: null,
      isLoading: false,
      hasError: false,
    );
  }
}
