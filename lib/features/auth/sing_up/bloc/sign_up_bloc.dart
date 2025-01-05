import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/core/model/user_model.dart';
import 'package:note_app/core/services/local_storage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final LocalStorage _localStorage = LocalStorage();

  SignUpBloc() : super(const SignUpState()) {
    on<_Submit>(_onSubmit);
    on<_LoginUser>(_onLoginUser);
    on<_LogoutUser>(_onLogoutUser);
    on<_AppStarted>(_onAppStarted);
    on<_CheckUsers>(_checkUser);
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      final user = User(
        id: const Uuid().v4(),
        name: event.name,
        email: event.email,
        password: event.password,
      );

      if (user.name.isEmpty || user.email.isEmpty || user.password.isEmpty) {
        emit(const SignUpState.error('All fields are required.'));
        return;
      }

      if (user.name.length <= 2) {
        emit(const SignUpState.error('Name must be longer than 2 characters.'));
        return;
      }

      if (user.email.length <= 8 || !user.email.contains('@')) {
        emit(const SignUpState.error('Invalid email format.'));
        return;
      }

      // if (user.password != user.confirmPassword) {
      //   emit(const SignUpState.error('Passwords do not match.'));
      //   return;
      // }

      await _localStorage.saveUser(user);
      await _localStorage.saveCurrentUser(user);
      emit(_Success(user));
    } catch (e) {
      emit(_Error('Ошибка при регистрации пользователя: $e'));
    }
  }

  Future<void> _onLoginUser(
    _LoginUser event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      final allUsers = await _localStorage.getAllUsers();
      if (allUsers != null) {
        for (var user in allUsers) {
          if (user.email == event.email && user.password == event.password) {
            emit(_Success(user));
            return;
          }
        }
        emit(_Error('Неверный пароль или email'));
      }
    } catch (e) {
      emit(_Error('Ошибка при входе: $e'));
    }
  }

  Future<void> _onLogoutUser(
    _LogoutUser event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      await _localStorage.deleteCurrentUser();
      emit(const _LogOut());
    } catch (e) {
      emit(_Error('Ошибка при выходе: $e'));
    }
  }

  Future<void> _onAppStarted(
    _AppStarted event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

      if (isLoggedIn) {
        final userData = prefs.getString('user');
        if (userData != null) {
          final user = User.fromJson(jsonDecode(userData));
          emit(SignUpState.success(user));
        } else {
          emit(const SignUpState.loggedOut());
        }
      } else {
        emit(const SignUpState.loggedOut());
      }
    } catch (e) {
      emit(SignUpState.error('Ошибка при загрузке данных: $e'));
    }
  }

  Future<void> _checkUser(
    _CheckUsers event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      final allUsers = await _localStorage.getAllUsers();
      if (allUsers == null || allUsers.isEmpty) {
        emit(const SignUpState.error(
            'There are no registered accounts yet. Please create account'));
        return;
      }
      emit(SignUpState.usersChecked());
    } catch (_) {
      emit(SignUpState.error('Error'));
    }
  }
}
