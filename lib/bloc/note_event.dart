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
  final String oldTitle;
  final String updatedTitle;
  final String updatedSubtitle;
  final Color updatedColor;

  const NoteUpdatedEvent(
    this.oldTitle,
    this.updatedTitle,
    this.updatedSubtitle,
    this.updatedColor,
  );

  @override
  List<Object?> get props => [
        oldTitle,
        updatedTitle,
        updatedSubtitle,
        updatedColor,
      ];
}
