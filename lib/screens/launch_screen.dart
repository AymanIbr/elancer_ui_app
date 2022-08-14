import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matcher/matcher.dart';




class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3 ), (){
      Navigator.pushReplacementNamed(context, '/on_boarding_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFF395B64),
              Color(0xFFA5C9CA)
            ],
          ),
        ),

        child: Text(
          'UI App',
          style: GoogleFonts.montserrat(
            fontSize: 26,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
