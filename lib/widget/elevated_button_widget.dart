import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
typedef onActionPress = void Function();
class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    required this.num,
    required this.color,
    required this.onAction,
    Key? key,
  }) : super(key: key);
  final String num;
  final int color;
  final Function onAction;




  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(color),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        )
      ),
      onPressed: (){
        onAction(num);
      },
      child: Text(
        num.toString(),
        style: GoogleFonts.nunito(
            color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}