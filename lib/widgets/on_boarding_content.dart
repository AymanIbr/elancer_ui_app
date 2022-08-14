import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoundingContent extends StatelessWidget {
  const OnBoundingContent({
    Key? key,
    required this.image,
    required this.title
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/$image.jpg',
          height: 317,
        ),
        SizedBox(height: 19,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Text(
                title,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.8,),
              Text('Hello To The App , My Name Ayman Altamimi , From Gaza , Im Study Sfotware Engineering',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 17,
                  color: Color(0xFF716787),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
