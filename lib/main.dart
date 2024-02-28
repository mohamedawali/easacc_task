import 'package:easacc_task/core/init/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {

  runApp( MyApp(appRouter:AppRouter()));
}

class MyApp extends StatelessWidget {
  AppRouter appRouter;
   MyApp({super.key, required this. appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(debugShowCheckedModeBanner: false,onGenerateRoute:appRouter.route ,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),

          );
        });
  }
}
