import 'package:flutter/material.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                 Align(
                   alignment: Alignment.bottomCenter,
                   child: Padding(
                     padding: EdgeInsets.all(5),
                     child: Container(
                       height: size.height * .4,
                       width: size.width,
                       decoration: BoxDecoration(
                         color: Colors.transparent,
                       ),
                       child: Padding(padding: EdgeInsets.symmetric(vertical: 20),
                       child: Column(
                         mainAxisSize: MainAxisSize.max,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           //Title
                          Text(
                            'Hungry?',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                          ),
                          Container(
                              width: size.width * .7,
                              child: Text(
                                'Confused about which Outfit to wear? Dont worry, find te best outfits here',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey[300], fontSize: 15),
                              ),
                            ),
                         ],
                       ),
                       ),
                       ),
                     ),
                 )
               ],
             ),
            ),
           ),
       ),
      ]
    );
  }
}
