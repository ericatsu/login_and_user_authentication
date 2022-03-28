import 'package:flutter/material.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          colors: [Colors.black, Colors.black12],
          begin: Alignment.bottomCenter,
          end: Alignment.center,
        ).createShader(bounds),
        blendMode: BlendMode.darken,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/hungry.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Color.fromARGB(115, 71, 70, 70), BlendMode.darken),
            ),
          ),
        ),
      ),
      Scaffold(
         backgroundColor: Colors.transparent,
         body: SingleChildScrollView(
           child: SafeArea(
             child: Column(
               children: [
                 Container(

                 ),
                 SizedBox(height: 5,),
                 Container(

                 ),
               ],
             ),
            ),
           ),
       ),
      ]
    );
  }
}
