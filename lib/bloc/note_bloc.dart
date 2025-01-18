import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:note_app/core/model/note_model.dart';
import 'package:note_app/core/services/local_storage/local_storage.dart';

part 'note_event.dart';

part 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final LocalStorage _localStorage = LocalStorage();

  NoteBloc() : super(NoteInitial()) {
    on<TextAddedEvent>(_addNote);
    on<NoteUpdatedEvent>(_editNote);
  }

  Future<void> _addNote(
    TextAddedEvent event,
    Emitter emit,
  ) async {
    final currentUserId = await _localStorage.getCurrentUser();
    if (currentUserId == null) return;
    try {
      final existingNotes = await _localStorage.getUserNotes(currentUserId.id);
      final newNote = Note(
        title: event.title,
        subtitle: event.subtitle,
        // color: event.color.value,
      );
      existingNotes.add(newNote);
      await _localStorage.saveUserNotes(currentUserId.id, existingNotes);
      emit(NoteListUpdated(List.from(existingNotes)));
    } catch (_) {
      emit(NoteErrorState('Failed to add note'));
    }
  }

  Future<void> _editNote(
    NoteUpdatedEvent event,
    Emitter emit,
  ) async {
    final currentUserId = await _localStorage.getCurrentUser();
    if (currentUserId == null) return;
    try {
      final existingNotes = await _localStorage.getUserNotes(currentUserId.id);
      final index = existingNotes.indexWhere((note) => note.title == event.oldTitle);
      if (index != -1) {
        existingNotes[index] = Note(
          title: event.updatedTitle,
          subtitle: event.updatedSubtitle,
          // color: event.updatedColor.value,
        );
        await _localStorage.saveUserNotes(currentUserId.id, existingNotes);
        emit(NoteListUpdated(List.from(existingNotes)));
      }
    } catch (_) {
      emit(NoteErrorState('Failed to edit note'));
    }
  }

// Future<void> _loadNotes(LoadNotesEvent event, Emitter emit,) async {
//   try {
//     final notes = await _localStorage.getUserNotes(_userId);
//     _notes.clear();
//     _notes.addAll(notes);
//     emit(NoteListUpdated(List.from(_notes)));
//   } catch (_) {
//     emit(NoteErrorState('Failed to load notes.'));
//   }
// }
//
// Future<void> _saveNotes(SaveNotesEvent event, Emitter emit,) async {
//   try {
//     await _localStorage.saveUserNotes(_userId, _notes);
//   } catch (_) {
//     emit(NoteErrorState('Failed to save notes.'));
//   }
// }
}
