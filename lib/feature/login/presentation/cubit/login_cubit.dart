import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_case/login_use_case.dart';
import '../../domain/use_case/login_with_google_use_case.dart';
import 'login_state.dart';

@lazySingleton
class LoginCubit extends Cubit<LoginState> {
  final LoginWithFacebookUseCase _loginWithFacebookUseCase;
  final LoginWithGoogleUseCase _loginWithGoogleUseCase;
  LoginCubit(this._loginWithFacebookUseCase,this._loginWithGoogleUseCase)
      : super(const LoginState.loginInitial());
  Future loginWithFacebook() async {
     await _loginWithFacebookUseCase();

  }
  Future loginWithGoogle() async {
    emit(const LoginState.loadingLogin());
 await _loginWithGoogleUseCase();

    emit(const LoginState.successLogin());

  }
}
