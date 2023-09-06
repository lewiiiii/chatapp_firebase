import 'package:firebase_core/firebase_core.dart';
import 'package:chatapp_firebase/pages/register_page.dart';
import 'package:chatapp_firebase/firebase_options.dart';
import 'package:chatapp_firebase/services/auth/auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:chatapp_firebase/services/auth/auth_service.dart';
import 'pages/login_page.dart';
import 'services/auth/login_or_register.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
