part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.getSavedOfficerDetails() = GetSavedOfficerDetails;

  const factory LoginEvent.loginButtonPressed({
    required String userName,
    required String password,
    required bool isChecked,
  }) = LoginButtonPressed;
}
