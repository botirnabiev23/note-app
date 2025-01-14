part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({@Default([]) List<Note> notes}) = _HomeState;
}
