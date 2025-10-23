import 'package:flutter/material.dart';
import 'package:navigationapp/firstpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
              Text('This is Home page', style: TextStyle(fontSize: 30)),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/first');
            },
            style: ButtonStyle(alignment: Alignment.center),

            child: Text('goto first page'),
          ),


          ],
        ),
      ),
    );
  }
}
