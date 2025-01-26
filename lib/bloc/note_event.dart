part of 'note_bloc.dart';

abstract class NoteEvent extends Equatable {
  const NoteEvent();

  @override
  List<Object?> get props => [];
}

class TextAddedEvent extends NoteEvent {
  final String title;
  final String subtitle;
  final Color color;

  const TextAddedEvent(this.title, this.subtitle, this.color);

  @override
  List<Object?> get props => [title, subtitle, color];
}

class NoteUpdatedEvent extends NoteEvent {
  final Note note;

  const NoteUpdatedEvent(this.note);

  @override
  List<Object?> get props => [
        note,
      ];
}

class LoadNotesEvent extends NoteEvent {}

class SaveNotesEvent extends NoteEvent {}

class SetUserEvent extends NoteEvent {
  final String userId;

  const SetUserEvent(this.userId);

  @override
  List<Object?> get props => [userId];
}
