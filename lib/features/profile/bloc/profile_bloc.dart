import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/core/model/user_model.dart';
import 'package:note_app/core/services/local_storage/local_storage.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final LocalStorage _localStorage = LocalStorage();

  ProfileBloc() : super(const ProfileState()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter emit,
  ) async {
    try {
      final currentUser = await _localStorage.getCurrentUser();
      emit(state.copyWith(user: currentUser));
    } catch (_) {}
  }
}
