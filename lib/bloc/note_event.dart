part of 'note_bloc.dart';

abstract class NoteEvent {}

class TextAddedEvent extends NoteEvent {
  final String text;
  // final String subtitle;


  TextAddedEvent(this.text);
}
