import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/core/model/user_model.dart';
import 'package:note_app/core/services/local_storage/local_storage.dart';
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
    on<_CheckUsers>(_checkUser);
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      if (event.name.isEmpty || event.email.isEmpty || event.password.isEmpty) {
        emit(const SignUpState.error('All fields are required.'));
        return;
      }

      if (event.name.length < 2) {
        emit(const SignUpState.error('Name must be longer than 2 characters.'));
        return;
      }

      if (event.email.length < 8 || !event.email.contains('@')) {
        emit(const SignUpState.error('Invalid email format.'));
        return;
      }

      if (event.password.length < 8) {
        emit(const SignUpState.error('Password must be than 8 characters'));
        return;
      }

      if (event.confirmPassword != event.password) {
        emit(const SignUpState.error('Passwords do not match'));
        return;
      }

      final user = User(
        id: const Uuid().v4(),
        name: event.name,
        email: event.email,
        password: event.password,
      );

      await _localStorage.saveUser(user);
      await _localStorage.saveCurrentUser(user);

      emit(_Success(user));
    } catch (e) {
      emit(_Error('Error while registering user: $e'));
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
            await _localStorage.saveCurrentUser(user);
            emit(_Success(user));
            return;
          }
        }
        emit(_Error('Incorrect password or email'));
      }
    } catch (e) {
      emit(_Error('Error logging in: $e'));
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
      emit(_Error('Error logging in: $e'));
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
