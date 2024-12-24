part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState() = _SignUpState;
  const factory SignUpState.success(String message) = _Success;
  const factory SignUpState.error(String message) = _Error;
}
