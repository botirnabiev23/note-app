import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<_Submit>(_onSubmit);
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<SignUpState> emit,
  ) async {
    final name = event.name;
    final email = event.email;
    final password = event.password;
    final confirmPassword = event.confirmPassword;

    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      emit(const SignUpState.error('All fields are required.'));
      return;
    }

    if (name.length <= 2) {
      emit(const SignUpState.error('Name must be longer than 2 characters.'));
      return;
    }

    if (email.length <= 8 || !email.contains('@')) {
      emit(const SignUpState.error('Invalid email format.'));
      return;
    }

    if (password != confirmPassword) {
      emit(const SignUpState.error('Passwords do not match.'));
      return;
    }

    emit(const SignUpState.success('Captcha passed successfully!'));
  }
}
