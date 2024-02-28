
//
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class LoginRepository{
  Future <LoginResult>loginWithFacebook();

  Future<GoogleSignInAccount?> loginWithGoogle() ;





}