
import 'package:flutter_facebook_auth_platform_interface/src/login_result.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/login_repository.dart';
import '../data_source/login_data_source.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource _loginDataSource;

  LoginRepositoryImpl(this._loginDataSource);


  @override
  Future<LoginResult> loginWithFacebook() async{
return await _loginDataSource.loginWithFacebook();
  }

  @override
  Future<GoogleSignInAccount?> loginWithGoogle() async{
    return await _loginDataSource.loginWithGoogle();
  }
}
