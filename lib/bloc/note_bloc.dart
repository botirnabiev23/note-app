import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:note_app/core/model/note_model.dart';
import 'package:note_app/core/services/local_storage/local_storage.dart';
import 'package:uuid/uuid.dart';

part 'note_event.dart';

part 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final LocalStorage _localStorage = LocalStorage();
  final Uuid uuid = Uuid();

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
        id: uuid.v4(),
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
      final allNotes = await _localStorage.getUserNotes(currentUserId.id);
      final updatedNotes = allNotes.map((note) {
        if (note.id == event.note.id) {
          return event.note;
        }
        return note;
      }).toList();
      await _localStorage.saveUserNotes(currentUserId.id, updatedNotes);
      emit(NoteListUpdated(updatedNotes));

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
