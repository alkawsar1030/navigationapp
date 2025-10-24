import 'package:flutter/material.dart';


class Firstpage extends StatelessWidget {
  const Firstpage({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('This data is come form home $data, (1stpage)', style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
               // Navigator.pushReplacementNamed(context, '/second');
                Navigator.pushNamed(context, '/second');
              },
              style: ButtonStyle(alignment: Alignment.center),
              child: Text('goto second  page'),
            ),
            ElevatedButton(
              onPressed: () {
               Navigator.pop(context,'KawsarUllah');

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
