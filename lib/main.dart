import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yat_flutter_final_project/login.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store',
      theme: ThemeData(
        primaryColor: Color(0xff01865f),
      ),
     home:LogInScreen (),
    );
  }
}

