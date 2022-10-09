
import 'package:finance_mobile_app/constants/constants.dart';
import 'package:finance_mobile_app/controller/googleSignIn.dart';
import 'package:finance_mobile_app/views/pages/signUp.dart';
import 'package:finance_mobile_app/views/widgets/roundButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  WelcomeState createState() => WelcomeState();
}

class WelcomeState extends State<Welcome> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: isLoading
          ? Center(
        child: SizedBox(
          height: size.height / 20,
          width: size.height / 20,
          child: const CircularProgressIndicator(),
        ),
      )
          : SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 2.2,
            ),
            SizedBox(
              width: size.width / 1.1,
              child: const Center(
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Easiest Way Manage your Money",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Finance is a gun.Politics is knowing when to pull the Trigger",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),


            SizedBox(
              height: size.height / 20,
            ),
           RoundButton(
              btnText: 'SIGN IN WITH GOOGLE',
               ratio:1,
               onPressed:  (){
                final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                 provider.googleLogin();
               } ,
              color:Color(0xff1111e8),
              textColor: Colors.white,
            ),


            RoundButton(
              btnText: 'CREATE AN ACCOUNT',
              ratio:1,
              onPressed: ()  {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder:(ctx)=>SignUp(),
                    )
                );
              } ,
              color:Color(0xffeaa20b),
              textColor: Colors.white,
            ),

          ],
        ),
      ),
    );
  }
}