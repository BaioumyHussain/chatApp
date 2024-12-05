import 'package:chatapp/Pages/login_page.dart';
import 'package:chatapp/Pages/register_page.dart';
import 'package:chatapp/Themes/light_mode.dart';
import 'package:chatapp/Services/auth/auth_gate.dart';
import 'package:chatapp/Services/auth/login_or_register.dart';
import 'package:chatapp/Themes/theme_provider.dart';
import 'package:chatapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  ThemeProvider themeApp = ThemeProvider();

  get darkMode => null;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => themeApp,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const AuthGate(),
        theme: lightMode,
        darkTheme: darkMode,
        themeMode: themeApp.theme,
      ),
    );
  }
}
