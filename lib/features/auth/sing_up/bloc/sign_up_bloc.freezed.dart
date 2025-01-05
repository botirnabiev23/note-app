// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        submit,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() appStarted,
    required TResult Function() checkUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? appStarted,
    TResult? Function()? checkUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? appStarted,
    TResult Function()? checkUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_CheckUsers value) checkUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_CheckUsers value)? checkUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submit value)? submit,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_CheckUsers value)? checkUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SignUpEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        submit,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() appStarted,
    required TResult Function() checkUsers,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? appStarted,
    TResult? Function()? checkUsers,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? appStarted,
    TResult Function()? checkUsers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_CheckUsers value) checkUsers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_CheckUsers value)? checkUsers,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submit value)? submit,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_CheckUsers value)? checkUsers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignUpEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name, String email, String password, String confirmPassword});
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$SubmitImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl(
      {required this.name,
      required this.email,
      required this.password,
      required this.confirmPassword});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SignUpEvent.submit(name: $name, email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, confirmPassword);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      __$$SubmitImplCopyWithImpl<_$SubmitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        submit,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() appStarted,
    required TResult Function() checkUsers,
  }) {
    return submit(name, email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? appStarted,
    TResult? Function()? checkUsers,
  }) {
    return submit?.call(name, email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? appStarted,
    TResult Function()? checkUsers,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(name, email, password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_CheckUsers value) checkUsers,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_CheckUsers value)? checkUsers,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submit value)? submit,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_CheckUsers value)? checkUsers,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements SignUpEvent {
  const factory _Submit(
      {required final String name,
      required final String email,
      required final String password,
      required final String confirmPassword}) = _$SubmitImpl;

  String get name;
  String get email;
  String get password;
  String get confirmPassword;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginUserImplCopyWith<$Res> {
  factory _$$LoginUserImplCopyWith(
          _$LoginUserImpl value, $Res Function(_$LoginUserImpl) then) =
      __$$LoginUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginUserImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$LoginUserImpl>
    implements _$$LoginUserImplCopyWith<$Res> {
  __$$LoginUserImplCopyWithImpl(
      _$LoginUserImpl _value, $Res Function(_$LoginUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginUserImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUserImpl implements _LoginUser {
  const _$LoginUserImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.loginUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      __$$LoginUserImplCopyWithImpl<_$LoginUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        submit,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() appStarted,
    required TResult Function() checkUsers,
  }) {
    return loginUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? appStarted,
    TResult? Function()? checkUsers,
  }) {
    return loginUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? appStarted,
    TResult Function()? checkUsers,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_CheckUsers value) checkUsers,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_CheckUsers value)? checkUsers,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submit value)? submit,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_CheckUsers value)? checkUsers,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class _LoginUser implements SignUpEvent {
  const factory _LoginUser(
      {required final String email,
      required final String password}) = _$LoginUserImpl;

  String get email;
  String get password;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutUserImplCopyWith<$Res> {
  factory _$$LogoutUserImplCopyWith(
          _$LogoutUserImpl value, $Res Function(_$LogoutUserImpl) then) =
      __$$LogoutUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutUserImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$LogoutUserImpl>
    implements _$$LogoutUserImplCopyWith<$Res> {
  __$$LogoutUserImplCopyWithImpl(
      _$LogoutUserImpl _value, $Res Function(_$LogoutUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutUserImpl implements _LogoutUser {
  const _$LogoutUserImpl();

  @override
  String toString() {
    return 'SignUpEvent.logoutUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        submit,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() appStarted,
    required TResult Function() checkUsers,
  }) {
    return logoutUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? appStarted,
    TResult? Function()? checkUsers,
  }) {
    return logoutUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? appStarted,
    TResult Function()? checkUsers,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_CheckUsers value) checkUsers,
  }) {
    return logoutUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_CheckUsers value)? checkUsers,
  }) {
    return logoutUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submit value)? submit,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_CheckUsers value)? checkUsers,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser(this);
    }
    return orElse();
  }
}

abstract class _LogoutUser implements SignUpEvent {
  const factory _LogoutUser() = _$LogoutUserImpl;
}

/// @nodoc
abstract class _$$AppStartedImplCopyWith<$Res> {
  factory _$$AppStartedImplCopyWith(
          _$AppStartedImpl value, $Res Function(_$AppStartedImpl) then) =
      __$$AppStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$AppStartedImpl>
    implements _$$AppStartedImplCopyWith<$Res> {
  __$$AppStartedImplCopyWithImpl(
      _$AppStartedImpl _value, $Res Function(_$AppStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppStartedImpl implements _AppStarted {
  const _$AppStartedImpl();

  @override
  String toString() {
    return 'SignUpEvent.appStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        submit,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() appStarted,
    required TResult Function() checkUsers,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? appStarted,
    TResult? Function()? checkUsers,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? appStarted,
    TResult Function()? checkUsers,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_CheckUsers value) checkUsers,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_CheckUsers value)? checkUsers,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submit value)? submit,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_CheckUsers value)? checkUsers,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class _AppStarted implements SignUpEvent {
  const factory _AppStarted() = _$AppStartedImpl;
}

/// @nodoc
abstract class _$$CheckUsersImplCopyWith<$Res> {
  factory _$$CheckUsersImplCopyWith(
          _$CheckUsersImpl value, $Res Function(_$CheckUsersImpl) then) =
      __$$CheckUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUsersImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$CheckUsersImpl>
    implements _$$CheckUsersImplCopyWith<$Res> {
  __$$CheckUsersImplCopyWithImpl(
      _$CheckUsersImpl _value, $Res Function(_$CheckUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckUsersImpl implements _CheckUsers {
  const _$CheckUsersImpl();

  @override
  String toString() {
    return 'SignUpEvent.checkUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        submit,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() appStarted,
    required TResult Function() checkUsers,
  }) {
    return checkUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? appStarted,
    TResult? Function()? checkUsers,
  }) {
    return checkUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        submit,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? appStarted,
    TResult Function()? checkUsers,
    required TResult orElse(),
  }) {
    if (checkUsers != null) {
      return checkUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_CheckUsers value) checkUsers,
  }) {
    return checkUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_CheckUsers value)? checkUsers,
  }) {
    return checkUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submit value)? submit,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_CheckUsers value)? checkUsers,
    required TResult orElse(),
  }) {
    if (checkUsers != null) {
      return checkUsers(this);
    }
    return orElse();
  }
}

abstract class _CheckUsers implements SignUpEvent {
  const factory _CheckUsers() = _$CheckUsersImpl;
}

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(User user) success,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function() usersChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(User user)? success,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function()? usersChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(User user)? success,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function()? usersChecked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpState value) $default, {
    required TResult Function(_Success value) success,
    required TResult Function(_LogOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_UsersCheckedState value) usersChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpState value)? $default, {
    TResult? Function(_Success value)? success,
    TResult? Function(_LogOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_UsersCheckedState value)? usersChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpState value)? $default, {
    TResult Function(_Success value)? success,
    TResult Function(_LogOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_UsersCheckedState value)? usersChecked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl();

  @override
  String toString() {
    return 'SignUpState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(User user) success,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function() usersChecked,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(User user)? success,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function()? usersChecked,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(User user)? success,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function()? usersChecked,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpState value) $default, {
    required TResult Function(_Success value) success,
    required TResult Function(_LogOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_UsersCheckedState value) usersChecked,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpState value)? $default, {
    TResult? Function(_Success value)? success,
    TResult? Function(_LogOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_UsersCheckedState value)? usersChecked,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpState value)? $default, {
    TResult Function(_Success value)? success,
    TResult Function(_LogOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_UsersCheckedState value)? usersChecked,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState() = _$SignUpStateImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'SignUpState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(User user) success,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function() usersChecked,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(User user)? success,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function()? usersChecked,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(User user)? success,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function()? usersChecked,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpState value) $default, {
    required TResult Function(_Success value) success,
    required TResult Function(_LogOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_UsersCheckedState value) usersChecked,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpState value)? $default, {
    TResult? Function(_Success value)? success,
    TResult? Function(_LogOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_UsersCheckedState value)? usersChecked,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpState value)? $default, {
    TResult Function(_Success value)? success,
    TResult Function(_LogOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_UsersCheckedState value)? usersChecked,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SignUpState {
  const factory _Success(final User user) = _$SuccessImpl;

  User get user;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'SignUpState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(User user) success,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function() usersChecked,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(User user)? success,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function()? usersChecked,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(User user)? success,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function()? usersChecked,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpState value) $default, {
    required TResult Function(_Success value) success,
    required TResult Function(_LogOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_UsersCheckedState value) usersChecked,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpState value)? $default, {
    TResult? Function(_Success value)? success,
    TResult? Function(_LogOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_UsersCheckedState value)? usersChecked,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpState value)? $default, {
    TResult Function(_Success value)? success,
    TResult Function(_LogOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_UsersCheckedState value)? usersChecked,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements SignUpState {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SignUpState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(User user) success,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function() usersChecked,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(User user)? success,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function()? usersChecked,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(User user)? success,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function()? usersChecked,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpState value) $default, {
    required TResult Function(_Success value) success,
    required TResult Function(_LogOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_UsersCheckedState value) usersChecked,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpState value)? $default, {
    TResult? Function(_Success value)? success,
    TResult? Function(_LogOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_UsersCheckedState value)? usersChecked,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpState value)? $default, {
    TResult Function(_Success value)? success,
    TResult Function(_LogOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_UsersCheckedState value)? usersChecked,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SignUpState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersCheckedStateImplCopyWith<$Res> {
  factory _$$UsersCheckedStateImplCopyWith(_$UsersCheckedStateImpl value,
          $Res Function(_$UsersCheckedStateImpl) then) =
      __$$UsersCheckedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersCheckedStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$UsersCheckedStateImpl>
    implements _$$UsersCheckedStateImplCopyWith<$Res> {
  __$$UsersCheckedStateImplCopyWithImpl(_$UsersCheckedStateImpl _value,
      $Res Function(_$UsersCheckedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UsersCheckedStateImpl implements _UsersCheckedState {
  const _$UsersCheckedStateImpl();

  @override
  String toString() {
    return 'SignUpState.usersChecked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsersCheckedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(User user) success,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
    required TResult Function() usersChecked,
  }) {
    return usersChecked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(User user)? success,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
    TResult? Function()? usersChecked,
  }) {
    return usersChecked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(User user)? success,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    TResult Function()? usersChecked,
    required TResult orElse(),
  }) {
    if (usersChecked != null) {
      return usersChecked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpState value) $default, {
    required TResult Function(_Success value) success,
    required TResult Function(_LogOut value) loggedOut,
    required TResult Function(_Error value) error,
    required TResult Function(_UsersCheckedState value) usersChecked,
  }) {
    return usersChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpState value)? $default, {
    TResult? Function(_Success value)? success,
    TResult? Function(_LogOut value)? loggedOut,
    TResult? Function(_Error value)? error,
    TResult? Function(_UsersCheckedState value)? usersChecked,
  }) {
    return usersChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpState value)? $default, {
    TResult Function(_Success value)? success,
    TResult Function(_LogOut value)? loggedOut,
    TResult Function(_Error value)? error,
    TResult Function(_UsersCheckedState value)? usersChecked,
    required TResult orElse(),
  }) {
    if (usersChecked != null) {
      return usersChecked(this);
    }
    return orElse();
  }
}

abstract class _UsersCheckedState implements SignUpState {
  const factory _UsersCheckedState() = _$UsersCheckedStateImpl;
}
