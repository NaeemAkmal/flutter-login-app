import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Controller/User%20Controller/user_controller.dart';
import 'package:tyamo/Views/Auth/login.dart';
import 'package:tyamo/Views/Auth/splash.dart';
import 'package:tyamo/Views/HomePage/dashboard.dart';
import 'package:tyamo/Views/HomePage/homepage.dart';
import 'package:tyamo/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UserController())],
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Tyamo',
            home: Homepage(),
          );
        },
      ),
    );
  