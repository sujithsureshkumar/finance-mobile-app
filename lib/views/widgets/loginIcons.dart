import 'package:finance_mobile_app/controller/googleSignIn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
class LoginIcons extends StatelessWidget {
  LoginIcons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: IconButton(

            onPressed: () {},
            icon: Icon(FontAwesomeIcons.facebook,
                size: 33.0 ,
                color: Color(0xff4646ad)
            ),
            //label: Text('Home')
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: IconButton(

            onPressed: (){
                  final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                   provider.googleLogin();
                 } ,
            icon: Icon(FontAwesomeIcons.googlePlus,
                size: 33.0 ,
                color: Color(0xffe05813)
            ),
            //label: Text('Home')
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: IconButton(

            onPressed: () {},
            icon: Icon(FontAwesomeIcons.twitter,
                size: 33.0 ,
                color: Color(0xff8b8bc9)
            ),
            //label: Text('Home')
          ),
        )
      ],
    );
  }
}