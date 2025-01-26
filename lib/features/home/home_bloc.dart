import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/core/model/note_model.dart';
import 'package:note_app/core/services/local_storage/local_storage.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final LocalStorage _localStorage = LocalStorage();

  HomeBloc() : super(const HomeState()) {
    on<_GetAllNotes>(_getAllNotes);
    on<_DeleteNote>(_deleteNote);
  }

  Future<void> _getAllNotes(
    _GetAllNotes event,
    Emitter emit,
  ) async {
    final currentUser = await _localStorage.getCurrentUser();
    if (currentUser == null) return;
    final allNotes = await _localStorage.getUserNotes(currentUser.id);
    print('shdfksdhfdshfs $allNotes');
    emit(state.copyWith(notes: allNotes));
  }
  Future<void> _deleteNote(
      _DeleteNote event,
      Emitter<HomeState> emit,
      ) async {
    final currentUser = await _localStorage.getCurrentUser();
    if (currentUser == null) return;

    final allNotes = await _localStorage.getUserNotes(currentUser.id);

    if (event.index < allNotes.length) {
      allNotes.removeAt(event.index);

      await _localStorage.saveUserNotes(currentUser.id, allNotes);

      emit(state.copyWith(notes: allNotes));
    }
  }
}
