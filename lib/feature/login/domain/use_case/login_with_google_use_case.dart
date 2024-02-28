
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../repository/login_repository.dart';

@lazySingleton
class LoginWithGoogleUseCase {
  final LoginRepository _loginRepository;

  LoginWithGoogleUseCase(this._loginRepository);

  Future<GoogleSignInAccount?> call() async {
    return await _loginRepository.loginWithGoogle();
  }
}