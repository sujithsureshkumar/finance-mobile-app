import 'package:finance_mobile_app/controller/googleSignIn.dart';
import 'package:finance_mobile_app/controller/wrapper.dart';
import 'package:finance_mobile_app/views/pages/signIn.dart';
import 'package:finance_mobile_app/views/pages/signUp.dart';
import 'package:finance_mobile_app/views/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
          create: (context)=>GoogleSignInProvider(),
          child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Wrapper(),
        )
    );
  }
}




