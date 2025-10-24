import 'package:flutter/material.dart';
import 'package:navigationapp/firstpage.dart';
import 'package:navigationapp/homepage.dart';
import 'package:navigationapp/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      //home:Homepage(),
      initialRoute: '/home',
      routes: {
        '/home':(context)=>Homepage(),
        //'/first':(context)=>Firstpage(),
        '/second':(context)=>Secondpage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: const Text('Route Not Found')),
            body: const Center(
              child: Text('⚠️ Unknown route detected!'),
            ),
          ),
        );
      },
    );
  }
}


