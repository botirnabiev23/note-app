part of 'splash_bloc.dart';


@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.authenticated({required User user}) = Authanticated;
  const factory SplashState.unauthenticated() = Unauthanticated;
}
