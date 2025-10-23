import 'package:flutter/material.dart';
import 'package:navigationapp/secondpage.dart';

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
            Text('This is First page', style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/second');
              },
              style: ButtonStyle(alignment: Alignment.center),
              child: Text('goto second  page'),
            ),
            ElevatedButton(
              onPressed: () {
               Navigator.pop(context);

              },
              style: ButtonStyle(alignment: Alignment.center),
              child: Text('goto home/previous page Direcr'),
            ),


          ],
        ),
      ),
    );
  }
}
