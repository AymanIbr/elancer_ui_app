
import 'package:elancer_ui_app/screens/app/bottom_navigation_screen.dart';
import 'package:elancer_ui_app/screens/app/categories_screen.dart';
import 'package:elancer_ui_app/screens/app/drawer/faqs_screen.dart';
import 'package:elancer_ui_app/screens/app/drawer/favorites_screen.dart';
import 'package:elancer_ui_app/screens/app/drawer/frequent_question_screen.dart';
import 'package:elancer_ui_app/screens/app/drawer/secound_favorite_screen.dart';
import 'package:elancer_ui_app/screens/app/home_screen.dart';
import 'package:elancer_ui_app/screens/app/second_home_screen.dart';
import 'package:elancer_ui_app/screens/app/settings_screen.dart';
import 'package:elancer_ui_app/screens/app/users_screen.dart';
import 'package:elancer_ui_app/screens/launch_screen.dart';
import 'package:elancer_ui_app/screens/login_screen.dart';
import 'package:elancer_ui_app/screens/onborarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import "package:matcher/matcher.dart";

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen' : (context)=>const LaunchScreen(),
        '/on_boarding_screen':(context)=>const OnBoardingScreen(),
        '/login_screen':(context)=>const LoginScreen(),
        '/users_screen':(context)=>const UsersScreen(),
        '/categories_screen':(context)=>const CategoryScreen(),
        '/home_screen':(context)=>const HomeScreen(),
        '/second_home_screen' : (context)=>const SecondHomeScerrn(),
        '/bottom_navigation_screen' : (context)=>const BottomNavigationScreen(),
        '/setting_screen':(context)=>const SettingScreen(),
        '/faqs_screen':(context)=>const FaqsScreen(),
        '/frequent_screen':(context)=>const FrequentQuestionScreen(),
        '/favorite_screen':(context)=>const FavoritesScreen(),
        '/secound_favorite_screen':(context)=>const SecoundFavoriteScreen(),

      },
    );
  }
}
