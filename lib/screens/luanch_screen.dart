import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LuanchScreen extends StatefulWidget {
  const LuanchScreen({Key? key}) : super(key: key);

  @override
  State<LuanchScreen> createState() => _LuanchScreenState();
}

class _LuanchScreenState extends State<LuanchScreen> {
  @override
  void initState() {
    super.initState();
    //TODO : Navigator home screen after 3 second
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/home_Screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0XFF80558C),
              Color(0XFFAF7AB3),
            ],
          ),
        ),
        child: Text(
          'CalculatorApp',
          style: GoogleFonts.nunito(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
