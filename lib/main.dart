import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tesla_laborotory/User/homeScreen.dart';

import 'Providers/loginProvider.dart';
import 'User/registration.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => LoginProvider(),)


    ],
      child: MaterialApp( debugShowCheckedModeBanner: false,

        home:HomeScreen(),
      ),
    );
  }
}


