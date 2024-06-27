import 'package:flutter/material.dart';
import 'package:flutterfood/components/button.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 68, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            Text(
              "ALLESIO",
              style: GoogleFonts.dmSerifDisplay(
                fontSize : 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),

            Padding(
                padding: const EdgeInsets.all(50.0),
              child:Image.asset('lib/images/burger.png') ,
            ),
            const SizedBox(height: 25),
            Text(
              "THE TASTE OF WESTERN FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize : 44,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),
            Text(
              "Feel the taste of the most popular western food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),

            const SizedBox(height: 25),
             MyButton(text: "Get Started",
             onTap: (){
               Navigator.pushNamed(context, '/menupage');
             },)

          ],
        ),
      ) ,
    );
  }
}