import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'note_event.dart';

part 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final List<String> _notes = []; // Список заметок

  NoteBloc() : super(NoteInitial()) {
    on<TextAddedEvent>((event, emit) {
      _notes.add(event.text); // Добавляем текст заметки
      emit(NoteListUpdated(List.from(_notes))); // Обновляем состояние
    });
  }
}

