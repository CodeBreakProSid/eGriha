// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/profile/model/profile.dart';
import '../../domain/profile/profile_service.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileService profileService;
  ProfileBloc(this.profileService) : super(ProfileState.initial()) {
    on<_GetProfileScreenData>((event, emit) async {
      if (state.officerProfile != null) {
        emit(state);
      }

      emit(state.copyWith(
        isLoading: true,
        hasError: false,
      ));

      final tempOfficerProfile = await profileService.getProfileDetails();

      final tempResponse = tempOfficerProfile.fold(
        (lleft_failure) {
          return ProfileState(
            stateID: DateTime.now().microsecondsSinceEpoch.toString(),
            officerProfile: null,
            isLoading: false,
            hasError: true,
          );
        },
        (right_success) {
          return ProfileState(
            stateID: DateTime.now().microsecondsSinceEpoch.toString(),
            officerProfile: right_success,
            isLoading: false,
            hasError: false,
          );
        },
      );
      //Emit the state for UI chages
      emit(tempResponse);
    });
  }
}
