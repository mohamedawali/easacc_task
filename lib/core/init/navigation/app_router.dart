// import 'package:flutter/material.dart';
// import 'package:tasks_app/features/login/presentation/pages/login.dart';
// import 'package:tasks_app/features/register/presentation/pages/register.dart';
// import 'package:tasks_app/testPage.dart';
//
// import '../../../features/splash/presentation/pages/splashScreen.dart';
//
// class AppRouter {
//   AppRouter._init();
//   static final AppRouter _instance = AppRouter._init();
//   static AppRouter get instance => _instance;
//
//   Route<dynamic> generateRoute(RouteSettings args) {
//     switch (args.name) {
//       case RegisterPage.routeName:
//         return RegisterPage.route();
//       case TasksPage.routeName:
//         return TasksPage.route();
//
//
//       default:
//         return SplashScreen.route();
//     }
//   }
// }
import 'package:easacc_task/dependance_injection/injection_container.dart';
import 'package:easacc_task/feature/login/presentation/cubit/login_cubit.dart';
import 'package:easacc_task/feature/login/presentation/screens/login_screen.dart';
import 'package:easacc_task/feature/setting/presentation/cubit/setting_cubit.dart';
import 'package:easacc_task/feature/setting/presentation/screens/setting_screen.dart';
import 'package:easacc_task/feature/web_view/presentation/screens/web_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  AppRouter() {
    configureDependencies();
  }

  Route? route(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                BlocProvider(
                  create: (context) => getIt.get<LoginCubit>(),
                  child: const LoginScreen(),
                ));

      case '/setting':
        return MaterialPageRoute(
          builder: (BuildContext context) =>
              BlocProvider(
                create: (context) => getIt.get<SettingCubit>(),
                child: const SettingScreen(),
              ),
        );

      case '/webPage':
        var url = routeSettings.arguments as String;
        return MaterialPageRoute(
            builder: (BuildContext context) => WebPage(url));
    }
    return null;
  }
}
