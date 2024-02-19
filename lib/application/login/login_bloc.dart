// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:egraha_app/domain/login/login_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/login/model/login_response.dart';
import '../../infrastructure/core/const/cache_const.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService loginServies;
  LoginBloc(this.loginServies) : super(LoginState.initial()) {
    //Get details from cache
    on<GetSavedOfficerDetails>(
      (event, emit) async {
        if (state.userName != null && state.password != null) {
          emit(state);
          return;
        }
        emit(
          LoginState(
            stateID: DateTime.now().microsecondsSinceEpoch.toString(),
            loginRespose: null,
            userData: null,
            isLoading: false,
            isAuthenticated: false,
            isChecked: false,
            hasError: false,
            userName: null,
            password: null,
          ),
        );

        final dataCache = await loginServies.getDetailsFromCache();

        final userName = dataCache[CacheConst.APP_USERNAME];
        final password = dataCache[CacheConst.APP_PASSWORD];

        emit(
          LoginState(
            stateID: DateTime.now().microsecondsSinceEpoch.toString(),
            loginRespose: null,
            userData: null,
            isLoading: false,
            isAuthenticated: false,
            isChecked: false,
            hasError: false,
            userName: userName,
            password: password,
          ),
        );
      },
    );
    //Login button pressed
    on<LoginButtonPressed>((event, emit) async {
      emit(
        LoginState(
          stateID: DateTime.now().microsecondsSinceEpoch.toString(),
          loginRespose: null,
          userData: null,
          isLoading: true,
          isAuthenticated: false,
          isChecked: state.isChecked,
          hasError: false,
          userName: null,
          password: null,
        ),
      );

      final loginServerResponse = await loginServies.logIn(
        userName: event.userName,
        password: event.password,
        isChecked: event.isChecked,
      );

      final tempResponse = loginServerResponse.fold(
        //On login error
        (left_failure) {
          return LoginState(
            stateID: DateTime.now().microsecondsSinceEpoch.toString(),
            loginRespose: null,
            userData: null,
            isLoading: false,
            isAuthenticated: false,
            isChecked: state.isChecked,
            hasError: true,
            userName: state.userName,
            password: state.password,
          );
        },
        //On login success
        (right_success) {
          return LoginState(
            stateID: DateTime.now().microsecondsSinceEpoch.toString(),
            loginRespose: right_success,
            userData: right_success.user,
            isLoading: false,
            isAuthenticated: true,
            isChecked: state.isChecked,
            hasError: false,
            userName: state.userName,
            password: state.password,
          );
        },
      );
      emit(tempResponse);
    });
  }
}
