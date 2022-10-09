import 'package:finance_mobile_app/controller/googleSignIn.dart';
import 'package:finance_mobile_app/views/pages/home.dart';
import 'package:finance_mobile_app/views/pages/signIn.dart';
import 'package:finance_mobile_app/views/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
class Wrapper extends StatelessWidget {
  Wrapper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
  Scaffold(
    body:StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder:(context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }else if(snapshot.hasData){
          return Home();
        }else if(snapshot.hasError){
          return Center(child: Text("Error"));
        }else{
          return Welcome();
        }
      }
    )
  );
}