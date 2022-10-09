
import 'package:finance_mobile_app/constants/constants.dart';
import 'package:finance_mobile_app/views/pages/signIn.dart';
import 'package:finance_mobile_app/views/widgets/customTextField.dart';
import 'package:finance_mobile_app/views/widgets/loginIcons.dart';
import 'package:finance_mobile_app/views/widgets/roundButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isLoading = false;
  bool? value = false;

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
                "SIGN UP",
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
              child: RichText(
                text: TextSpan(
                  text: "HELLO ",
                  style: TextStyle(fontSize: 28,fontWeight: FontWeight.normal,color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: "BEAUTIFUL.!",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                        ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width / 1.1,
                child: Text(
                  "Enter your information below or login with Credit an account",
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
                child: customTextfield("User Name",size, "User Name", Icons.person, _email,false),
              ),
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Checkbox(
                         value: this.value,
                         onChanged: (bool? value) {
                             setState(() {
                            this.value = value;
                     }
                     );
                         }
                             ),
                  ),

                  Container(
                      width: size.width / 1.2,
                    child: RichText(
                      text: TextSpan(
                        text: "I agree to the ",
                        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(text: "terms & conditions, privacy policy ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  decoration:TextDecoration.underline,
                                  color: Color(0xffa0d057),
                              ),
                          ),

                          TextSpan(text: "and ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  decoration:TextDecoration.underline
                              ),
                          ),

                          TextSpan(text: "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  decoration:TextDecoration.underline,
                                color: Color(0xffa0d057),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = ()  {
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                                    builder:(ctx)=>SignIn(),
                                  )
                                  );
                                }
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(
              height: size.height / 90,
            ),
            const RoundButton(
              btnText: 'SIGN UP',
              // onPressed: widget.onPressed,
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
                  text: "Already have an Account?Click here ",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            decoration:TextDecoration.underline
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder:(ctx)=>SignIn(),
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