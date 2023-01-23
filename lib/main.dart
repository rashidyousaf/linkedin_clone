import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/consts/colors.dart';
import 'package:linkedin_clon/controllers/navigation_model.dart';
import 'package:linkedin_clon/views/auth/auth_home_screen.dart';
import 'package:linkedin_clon/views/auth/login/login_screen.dart';
import 'package:linkedin_clon/views/auth/signup/signup_screen.dart';
import 'package:linkedin_clon/views/others_screen/bottom_navigation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(467, 986.56),
        minTextAdapt: true,
        builder: (context, child) {
          return MultiProvider(
            providers: [
              Provider<NavigationModel>(
                create: (_) => NavigationModel(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(scaffoldBackgroundColor: whiteColor),
              initialRoute: '/',
              routes: {
                '/': (context) => const AuthHomeScreen(),
                '/signupscreen': (context) => const SignupScreen(),
                '/loginscreen': (context) => const LogInScreen(),
                '/bottomnavigation': (context) => const BottomNavigation(),
              },
            ),
          );
        });
  }
}
