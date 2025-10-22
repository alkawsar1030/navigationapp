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



              ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Firstpage()));
              },
                style: ButtonStyle(alignment: Alignment.center),
                child: Text('goto first page',),
              ),

          ],
        ),
      ),

    );
  }
}
