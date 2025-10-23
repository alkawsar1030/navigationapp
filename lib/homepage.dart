import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  void safePop(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('⚠️ No page left to go back!')),
      );
    }
  }


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

          ElevatedButton(
            onPressed: () {
           safePop(context);

            },
            style: ButtonStyle(alignment: Alignment.center),

            child: Text('goto next page'),
          ),



          ],



        ),
      ),
    );
  }
}
