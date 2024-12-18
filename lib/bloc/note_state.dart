part of 'note_bloc.dart';

abstract class NoteState {}

final class NoteInitial extends NoteState {}

class NoteListUpdated extends NoteState {
  final List<String> notes;

  NoteListUpdated(this.notes);
}
