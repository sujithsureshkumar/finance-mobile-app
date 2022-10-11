import 'package:finance_mobile_app/constants/constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String btnText;
  final VoidCallback? onPressed;
  final double ratio;
  final Color color,textColor;
  const RoundButton({Key? key, required this.btnText,
                                 this.onPressed,
                                 required this.ratio,
                                 required this.color,
                                 required this.textColor
                       }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*ratio,
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child:TextButton(
          onPressed:onPressed,
          style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize:
              MaterialStateProperty.all(const Size(double.infinity, 64)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kShape)),
              ),
              backgroundColor:
              MaterialStateProperty.all(color)),
          child:Text(
            btnText,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }
}