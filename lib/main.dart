import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:resource_manager/core/injection/injection.dart';
import 'package:resource_manager/views/home/navigator.dart';
import 'package:resource_manager/views/login/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Injection().inject();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: validator(),
    );
  }

  Widget validator() {
    if (FirebaseAuth.instance.currentUser != null) {
      return const NavigatorView();
    } else {
      return const LoginView();
    }
  }
}
