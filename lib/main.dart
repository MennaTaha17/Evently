import 'package:evently/common/theme/app_theme.dart';
import 'package:evently/home/main_layer_screen.dart';
import 'package:evently/screens/auth/login_screen.dart';
import 'package:evently/screens/auth/sign_up_screen.dart';
import 'package:evently/screens/new_event_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evently',
      routes: {
        LoginScreen.routeName: (_) => LoginScreen(),
        SignUpScreen.routeName: (_) => SignUpScreen(),
        MainLayerScreen.routeName: (_) => MainLayerScreen(),
        NewEventScreen.routeName: (_) => NewEventScreen(),
      },
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute:
          FirebaseAuth.instance.currentUser?.uid == null
              ? LoginScreen.routeName
              : MainLayerScreen.routeName,
    );
  }
}
