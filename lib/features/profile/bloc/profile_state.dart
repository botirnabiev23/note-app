part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({User? user}) = _ProfileState;
}

extension ProfileStateExtension on ProfileState {
  User get currentUser =>
      user ??
      User(
        id: '',
        name: '',
        email: '',
        password: '',
      );
}
