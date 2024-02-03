// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedOfficerDetails,
    required TResult Function(String userName, String password, bool isChecked)
        loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedOfficerDetails,
    TResult? Function(String userName, String password, bool isChecked)?
        loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedOfficerDetails,
    TResult Function(String userName, String password, bool isChecked)?
        loginButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSavedOfficerDetails value)
        getSavedOfficerDetails,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSavedOfficerDetails value)? getSavedOfficerDetails,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSavedOfficerDetails value)? getSavedOfficerDetails,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSavedOfficerDetailsImplCopyWith<$Res> {
  factory _$$GetSavedOfficerDetailsImplCopyWith(
          _$GetSavedOfficerDetailsImpl value,
          $Res Function(_$GetSavedOfficerDetailsImpl) then) =
      __$$GetSavedOfficerDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSavedOfficerDetailsImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$GetSavedOfficerDetailsImpl>
    implements _$$GetSavedOfficerDetailsImplCopyWith<$Res> {
  __$$GetSavedOfficerDetailsImplCopyWithImpl(
      _$GetSavedOfficerDetailsImpl _value,
      $Res Function(_$GetSavedOfficerDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSavedOfficerDetailsImpl implements GetSavedOfficerDetails {
  const _$GetSavedOfficerDetailsImpl();

  @override
  String toString() {
    return 'LoginEvent.getSavedOfficerDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSavedOfficerDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedOfficerDetails,
    required TResult Function(String userName, String password, bool isChecked)
        loginButtonPressed,
  }) {
    return getSavedOfficerDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedOfficerDetails,
    TResult? Function(String userName, String password, bool isChecked)?
        loginButtonPressed,
  }) {
    return getSavedOfficerDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedOfficerDetails,
    TResult Function(String userName, String password, bool isChecked)?
        loginButtonPressed,
    required TResult orElse(),
  }) {
    if (getSavedOfficerDetails != null) {
      return getSavedOfficerDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSavedOfficerDetails value)
        getSavedOfficerDetails,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
  }) {
    return getSavedOfficerDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSavedOfficerDetails value)? getSavedOfficerDetails,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
  }) {
    return getSavedOfficerDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSavedOfficerDetails value)? getSavedOfficerDetails,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (getSavedOfficerDetails != null) {
      return getSavedOfficerDetails(this);
    }
    return orElse();
  }
}

abstract class GetSavedOfficerDetails implements LoginEvent {
  const factory GetSavedOfficerDetails() = _$GetSavedOfficerDetailsImpl;
}

/// @nodoc
abstract class _$$LoginButtonPressedImplCopyWith<$Res> {
  factory _$$LoginButtonPressedImplCopyWith(_$LoginButtonPressedImpl value,
          $Res Function(_$LoginButtonPressedImpl) then) =
      __$$LoginButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, String password, bool isChecked});
}

/// @nodoc
class __$$LoginButtonPressedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginButtonPressedImpl>
    implements _$$LoginButtonPressedImplCopyWith<$Res> {
  __$$LoginButtonPressedImplCopyWithImpl(_$LoginButtonPressedImpl _value,
      $Res Function(_$LoginButtonPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
    Object? isChecked = null,
  }) {
    return _then(_$LoginButtonPressedImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginButtonPressedImpl implements LoginButtonPressed {
  const _$LoginButtonPressedImpl(
      {required this.userName,
      required this.password,
      required this.isChecked});

  @override
  final String userName;
  @override
  final String password;
  @override
  final bool isChecked;

  @override
  String toString() {
    return 'LoginEvent.loginButtonPressed(userName: $userName, password: $password, isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginButtonPressedImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password, isChecked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginButtonPressedImplCopyWith<_$LoginButtonPressedImpl> get copyWith =>
      __$$LoginButtonPressedImplCopyWithImpl<_$LoginButtonPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedOfficerDetails,
    required TResult Function(String userName, String password, bool isChecked)
        loginButtonPressed,
  }) {
    return loginButtonPressed(userName, password, isChecked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedOfficerDetails,
    TResult? Function(String userName, String password, bool isChecked)?
        loginButtonPressed,
  }) {
    return loginButtonPressed?.call(userName, password, isChecked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedOfficerDetails,
    TResult Function(String userName, String password, bool isChecked)?
        loginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(userName, password, isChecked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSavedOfficerDetails value)
        getSavedOfficerDetails,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
  }) {
    return loginButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSavedOfficerDetails value)? getSavedOfficerDetails,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
  }) {
    return loginButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSavedOfficerDetails value)? getSavedOfficerDetails,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(this);
    }
    return orElse();
  }
}

abstract class LoginButtonPressed implements LoginEvent {
  const factory LoginButtonPressed(
      {required final String userName,
      required final String password,
      required final bool isChecked}) = _$LoginButtonPressedImpl;

  String get userName;
  String get password;
  bool get isChecked;
  @JsonKey(ignore: true)
  _$$LoginButtonPressedImplCopyWith<_$LoginButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  String get stateID => throw _privateConstructorUsedError;
  LoginResponse? get loginRespose => throw _privateConstructorUsedError;
  User? get userData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {String stateID,
      LoginResponse? loginRespose,
      User? userData,
      bool isLoading,
      bool isAuthenticated,
      bool isChecked,
      bool hasError,
      String? userName,
      String? password});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateID = null,
    Object? loginRespose = freezed,
    Object? userData = freezed,
    Object? isLoading = null,
    Object? isAuthenticated = null,
    Object? isChecked = null,
    Object? hasError = null,
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      stateID: null == stateID
          ? _value.stateID
          : stateID // ignore: cast_nullable_to_non_nullable
              as String,
      loginRespose: freezed == loginRespose
          ? _value.loginRespose
          : loginRespose // ignore: cast_nullable_to_non_nullable
              as LoginResponse?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateID,
      LoginResponse? loginRespose,
      User? userData,
      bool isLoading,
      bool isAuthenticated,
      bool isChecked,
      bool hasError,
      String? userName,
      String? password});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateID = null,
    Object? loginRespose = freezed,
    Object? userData = freezed,
    Object? isLoading = null,
    Object? isAuthenticated = null,
    Object? isChecked = null,
    Object? hasError = null,
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LoginStateImpl(
      stateID: null == stateID
          ? _value.stateID
          : stateID // ignore: cast_nullable_to_non_nullable
              as String,
      loginRespose: freezed == loginRespose
          ? _value.loginRespose
          : loginRespose // ignore: cast_nullable_to_non_nullable
              as LoginResponse?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {required this.stateID,
      required this.loginRespose,
      required this.userData,
      required this.isLoading,
      required this.isAuthenticated,
      required this.isChecked,
      required this.hasError,
      required this.userName,
      required this.password});

  @override
  final String stateID;
  @override
  final LoginResponse? loginRespose;
  @override
  final User? userData;
  @override
  final bool isLoading;
  @override
  final bool isAuthenticated;
  @override
  final bool isChecked;
  @override
  final bool hasError;
  @override
  final String? userName;
  @override
  final String? password;

  @override
  String toString() {
    return 'LoginState(stateID: $stateID, loginRespose: $loginRespose, userData: $userData, isLoading: $isLoading, isAuthenticated: $isAuthenticated, isChecked: $isChecked, hasError: $hasError, userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.stateID, stateID) || other.stateID == stateID) &&
            (identical(other.loginRespose, loginRespose) ||
                other.loginRespose == loginRespose) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateID, loginRespose, userData,
      isLoading, isAuthenticated, isChecked, hasError, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final String stateID,
      required final LoginResponse? loginRespose,
      required final User? userData,
      required final bool isLoading,
      required final bool isAuthenticated,
      required final bool isChecked,
      required final bool hasError,
      required final String? userName,
      required final String? password}) = _$LoginStateImpl;

  @override
  String get stateID;
  @override
  LoginResponse? get loginRespose;
  @override
  User? get userData;
  @override
  bool get isLoading;
  @override
  bool get isAuthenticated;
  @override
  bool get isChecked;
  @override
  bool get hasError;
  @override
  String? get userName;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
