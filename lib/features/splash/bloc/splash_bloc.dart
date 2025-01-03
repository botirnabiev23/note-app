import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/model/user_model.dart';
import 'package:note_app/core/services/local_storage/local_storage.dart';

part 'splash_event.dart';

part 'splash_state.dart';

part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final LocalStorage _localStorage = LocalStorage();

  SplashBloc() : super(const SplashState.initial()) {
    on<_CheckAuthStatus>(_checkAuthStatus);
  }

  Future<void> _checkAuthStatus(
    _CheckAuthStatus event,
    Emitter<SplashState> emit,
  ) async {
    try {
      final user = await _localStorage.getCurrentUser();
      if (user != null) {
        emit(SplashState.authenticated(user: user));
        return;
      }
      emit(const SplashState.unauthenticated());
    } catch (_) {
      emit(const SplashState.unauthenticated());
    }
  }
}
