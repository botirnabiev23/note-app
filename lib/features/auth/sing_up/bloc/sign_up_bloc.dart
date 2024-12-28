import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/core/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<_Submit>(_onSubmit);
    on<_LoginUser>(_onLoginUser);
    on<_LogoutUser>(_onLogoutUser);
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final user = User(
        id: const Uuid().v4(),
        name: event.name,
        email: event.email,
        password: event.password,
      );

      await prefs.setString('user', jsonEncode(user.toJson()));
      emit(_Success(user));
    } catch (e) {
      emit(_Error('Ошибка при регистрации пользователя: $e'));
    }
  }

  Future<void> _onLoginUser(_LoginUser event, Emitter<SignUpState> emit) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userData = prefs.getString('user');

      if (userData != null) {
        final user = User.fromJson(jsonDecode(userData));
        if (user.email == event.email && user.password == event.password) {
          await prefs.setBool('isLoggedIn', true);
          emit(_Success(user));
        } else {
          emit(const _Error('Неверный пароль или email'));
        }
      } else {
        emit(const _Error('Пользователь не найден.'));
      }
    } catch (e) {
      emit(_Error('Ошибка при входе: $e'));
    }
  }

  Future<void> _onLogoutUser(
      _LogoutUser event, Emitter<SignUpState> emit) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', false);
      emit(const _LogOut());
    } catch (e) {
      emit(_Error('Ошибка при выходе: $e'));
    }
  }

// Future<void> _onSubmit(
//   _Submit event,
//   Emitter<SignUpState> emit,
// ) async {
//   final name = event.name;
//   final email = event.email;
//   final password = event.password;
//   final confirmPassword = event.confirmPassword;

// if (name.isEmpty ||
//     email.isEmpty ||
//     password.isEmpty ||
//     confirmPassword.isEmpty) {
//   emit(const SignUpState.error('All fields are required.'));
//   return;
// }
//
// if (name.length <= 2) {
//   emit(const SignUpState.error('Name must be longer than 2 characters.'));
//   return;
// }
//
// if (email.length <= 8 || !email.contains('@')) {
//   emit(const SignUpState.error('Invalid email format.'));
//   return;
// }
//
// if (password != confirmPassword) {
//   emit(const SignUpState.error('Passwords do not match.'));
//   return;
// }

//   emit(const SignUpState.success('Captcha passed successfully!'));
// }
}
