
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:injectable/injectable.dart';

import '../repository/login_repository.dart';

@lazySingleton
class LoginWithFacebookUseCase {
  final LoginRepository _loginRepository;

  LoginWithFacebookUseCase(this._loginRepository);

  Future<LoginResult> call() async {
    return await _loginRepository.loginWithFacebook();
  }
}