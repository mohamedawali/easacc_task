
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

abstract class LoginDataSource {
  Future<LoginResult> loginWithFacebook();
  Future<GoogleSignInAccount?> loginWithGoogle();
}

@LazySingleton(as: LoginDataSource)
class LoginDataSourceImpl implements LoginDataSource {
  @override
  Future<LoginResult> loginWithFacebook() async {
    return await FacebookAuth.instance
        .login(permissions: ['email', 'public_profile']);
  }

  @override
  Future<GoogleSignInAccount?> loginWithGoogle() async {
    return await GoogleSignIn().signIn();
  }
}
