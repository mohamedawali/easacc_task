
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';
@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.loginInitial() = LoginInitial;
  const factory LoginState.loadingLogin() = LoadingLogin;
  const factory LoginState.successLogin() = SuccessLogin;
}

