
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sing_in_event.dart';
part 'sing_in_state.dart';
part 'sing_in_bloc.freezed.dart';

class SingInBloc extends Bloc<SingInEvent, SingInState> {
  SingInBloc() : super(const SingInState()) {
    on<SingInEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
