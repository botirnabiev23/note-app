part of 'sing_in_bloc.dart';

@freezed
class SingInEvent with _$SingInEvent {
  const factory SingInEvent.started() = _Started;

  const factory SingInEvent.submit({
   required String name,
   required String email,
   required String password,
  }) = _Submit;
}
