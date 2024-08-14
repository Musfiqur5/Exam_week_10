

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  MySnackbar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Text Styling App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                  child: Text("Flutter Text Styling",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,),),),
            Padding(
                padding: EdgeInsets.all(10),
                  child: Text("Experiment with text styles",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,),),),
            Padding(
                padding: EdgeInsets.all(10),
                  child: TextButton(onPressed: (){MySnackbar("You clicked the button!", context);},
                    child: Text("Click me"),),),
            Padding(
                padding: EdgeInsets.all(10),
                  child: RichText(
                    text: TextSpan(
                      text: "Welcome to ",
                        style: TextStyle(
                          fontSize: 20,
                            color: Colors.black, // Color for the default text
                              fontWeight: FontWeight.bold,),
                children: <TextSpan>[
                      TextSpan(
                        text: "Flutter!",
                          style: TextStyle(
                            color: Colors.blue, // Color for "Flutter!"
                              fontWeight: FontWeight.bold,),
                              ),
                          ]
                      ),
                    ),
                ),
          ],
        ),
      ),
    );
  }
}
