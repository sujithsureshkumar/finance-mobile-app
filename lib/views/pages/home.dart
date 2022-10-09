import 'package:finance_mobile_app/controller/googleSignIn.dart';
import 'package:finance_mobile_app/views/pages/signIn.dart';
import 'package:finance_mobile_app/views/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../widgets/roundButton.dart';
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      Scaffold(
          body:RoundButton(
            btnText: 'Logout',
            ratio:1,
            onPressed:  (){
              final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            } ,
            color:Color(0xff1111e8),
            textColor: Colors.white,
          ),
      );
}