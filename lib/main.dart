import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart'; // Import Firebase Auth
import 'package:test_test/features/app/splash_screen/splash_screen.dart';
import 'package:test_test/features/user_auth/presentation/pages/home_page.dart';
import 'package:test_test/features/user_auth/presentation/pages/login_page.dart';
import 'package:test_test/features/user_auth/presentation/pages/sign_up_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyBKkuSwlJjEjeRyvHVtBje7OK-nrqLLHYI",
        appId: "1:236336958358:android:45813a23c8d6fdeaecabb7",
        messagingSenderId: "236336958358",
        projectId: "pbl-testing",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: LoginPage(),
        ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}