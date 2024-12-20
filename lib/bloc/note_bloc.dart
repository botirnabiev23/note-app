import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:note_app/pages/home_page.dart';

part 'note_event.dart';

part 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final List<Note> _notes = [];

  NoteBloc() : super(NoteInitial()) {
    on<TextAddedEvent>((event, emit) {
      final newNote = Note(
        title: event.title,
        subtitle: event.subtitle,
        color: event.color,
      );
      _notes.add(newNote);
      emit(NoteListUpdated(List.from(_notes)));
    });
    on<NoteUpdatedEvent>((event, emit) {
      final index = _notes.indexWhere((note) => note.title == event.oldTitle);
      if (index != -1) {
        _notes[index] = Note(
          title: event.updatedTitle,
          subtitle: event.updatedSubtitle,
          color: event.updatedColor,
        );
        emit(NoteListUpdated(List.from(_notes)));
      }
    });
  }
}
