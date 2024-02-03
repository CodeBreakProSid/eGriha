part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String stateID,
    required LoginResponse? loginRespose,
    required User? userData,
    required bool isLoading,
    required bool isAuthenticated,
    required bool isChecked,
    required bool hasError,
    required String? userName,
    required String? password,
  }) = _LoginState;

  factory LoginState.initial() {
    return const LoginState(
      stateID: '0',
      loginRespose: null,
      userData: null,
      isLoading: false,
      isAuthenticated: false,
      isChecked: false,
      hasError: false,
      userName: null,
      password: null,
    );
  }
}
