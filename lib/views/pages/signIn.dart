
import 'package:finance_mobile_app/constants/constants.dart';
import 'package:finance_mobile_app/views/pages/dashboard.dart';
import 'package:finance_mobile_app/views/pages/news.dart';
import 'package:finance_mobile_app/views/pages/signUp.dart';
import 'package:finance_mobile_app/views/widgets/customTextField.dart';
import 'package:finance_mobile_app/views/widgets/loginIcons.dart';
import 'package:finance_mobile_app/views/widgets/roundButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:finance_mobile_app/controller/auth.dart';



class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   final AuthService _auth = AuthService();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffe1e1ec),
      body: isLoading
          ? Center(
        child: Container(
          height: size.height / 20,
          width: size.height / 20,
          child: CircularProgressIndicator(),
        ),
      )
          : SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              height: size.height / 5,
            ),
            Container(
              width: size.width / 1.1,
              child: Text(
                "SIGN IN",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: size.height / 15,
            ),
            Container(
              width: size.width / 1.1,
              child: Text(
                "WELCOME BACK :)",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width / 1.1,
                child: Text(
                  "To keep Connected with us please login with your Personal information by address and password.",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height / 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: customEmailfield("Email Id",size, "email",  _email,false),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: customTextfield("Password",size, "password", FontAwesomeIcons.eyeSlash, _password,true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 36.0, 8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height / 90,
            ),
            RoundButton(
              btnText: 'SIGN IN',
               onPressed: () {
        if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
          setState(() {
            isLoading = true;
          });

          _auth.signInWithEmailAndPassword(_email.text, _password.text).then((user) {
            if (user != null) {
              print("Login Successfully");
              setState(() {
                isLoading = false;
              });
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Dashboard()));
            } else {
              print("Login Failed");
              setState(() {
                isLoading = false;
              });
            }
          });
        } else {
          print("Please fill form correctly");
        }
      },
              ratio: 1,
              color:blue,
              textColor: kWhiteColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Text(
                  "Or you can Join With",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            LoginIcons(),
            SizedBox(
              height: size.height / 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: "Don't have an Account?Click here ",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: "Register Now",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                          decoration:TextDecoration.underline
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = ()  {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder:(ctx)=>SignUp(),
                                )
                            );
                          }
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: size.height / 15,
            ),
          ],
        ),
      ),
    );
  }


}