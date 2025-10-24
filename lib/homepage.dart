import 'package:flutter/material.dart';
import 'package:navigationapp/firstpage.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  void safePop(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('⚠️ No!. there is no previous page !')),
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
            onPressed: () async {
              final resust = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Firstpage(data: 'Hello i am  from home',),));
              if(resust!=null){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Data received : $resust')));
              }
            },
            style: ButtonStyle(alignment: Alignment.center),

            child: Text('goto first page'),
          ),

          ElevatedButton(
            onPressed: () {
           safePop(context);

            },
            style: ButtonStyle(alignment: Alignment.center),

            child: Text('goto previous page'),
          ),



          ],



        ),
      ),
    );
  }
}

