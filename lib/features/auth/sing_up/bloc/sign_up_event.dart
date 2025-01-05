part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;

  const factory SignUpEvent.submit({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) = _Submit;

  const factory SignUpEvent.loginUser({
    required String email,
    required String password,
  }) = _LoginUser;

  const factory SignUpEvent.logoutUser() = _LogoutUser;

  const factory SignUpEvent.appStarted() = _AppStarted;

  const factory SignUpEvent.checkUsers() = _CheckUsers;
}
