part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default(null) User? user,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _LoginState;
}
