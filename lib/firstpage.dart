import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Container(

              child: ElevatedButton(onPressed: (){Navigator.pop(context);},
                style: ButtonStyle(alignment: Alignment.center),
                child: Text('goto second page page',),
              ),
            )
          ],
        ),
      ),

    );
  }
}
