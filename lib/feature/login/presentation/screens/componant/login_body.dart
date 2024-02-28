import 'package:easacc_task/feature/login/presentation/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widget/custom_button.dart';
import '../../cubit/login_state.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = BlocProvider.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              state.whenOrNull(successLogin: () {
                Navigator.pushNamed(context, '/setting');
              });
            },
            builder: (context, state) {
              return state.maybeWhen(
                  loadingLogin: () =>
                      const Center(child: CircularProgressIndicator()),
                  orElse: () => CustomButton(
                      title: 'Continue with Google',
                      onPress: () async {
                        await loginCubit.loginWithGoogle();
                      }));
            },
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomButton(
              title: 'Continue with Facebook',
              onPress: () async {
                await loginCubit.loginWithFacebook();
              })
        ],
      ),
    );
  }
}
