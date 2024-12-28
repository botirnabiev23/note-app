part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState() = _SignUpState;
  const factory SignUpState.success(User user) = _Success;
  const factory SignUpState.loggedOut() = _LogOut;
  const factory SignUpState.error(String message) = _Error;
}
