import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:library_management_system/authorization/registration.dart';
import 'package:library_management_system/authorization/login.dart';
import 'package:library_management_system/authorization/enter_details.dart';
import 'package:library_management_system/Screens/welcome_screen.dart';
import 'package:library_management_system/Screens/search_screen.dart';
import 'package:library_management_system/Screens/home_screen.dart';
import 'package:library_management_system/Screens/admin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        Login.id: (context) => Login(),
        Registration.id: (context) => Registration(),
        EnterDetails.id: (context) => EnterDetails(),
        SearchScreen.id: (context) => SearchScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        AdminScreen.id: (context) => AdminScreen()
      }
    ),
  );
}

