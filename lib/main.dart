import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Container',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo Container'),
          backgroundColor: Colors.cyan,
        ),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            color: Colors.amber[100],
            borderRadius: BorderRadius.all(
              Radius.circular(40)
              ),
          ),
          padding: EdgeInsets.all(50),
          margin: EdgeInsets.all(30),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Contenido", 
                style: TextStyle(fontSize: 40)
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          onPressed: () {
            print("Ok!");
          },
          child: Icon(Icons.add_circle),
        ),
      )
    );
  }
}

