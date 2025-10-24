import 'package:flutter/material.dart';


class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('This is Second page', style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(alignment: Alignment.center),
              child: Text('goto first page page'),
            ),
            ElevatedButton(
              onPressed: () {

               //Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false,);//whole stack will be remove and it will push home page/other targated page only
               Navigator.pushReplacementNamed(context,'/home');//only current page will be removed stuck will remain unchnged on current page/second page will be removed
               // Navigator.pushNamed(context, '/home');

              },

              style: ButtonStyle(alignment: Alignment.center),
              child: Text('Direct goto Home page'),
            ),
          ],
        ),
      ),
    );
  }
}
