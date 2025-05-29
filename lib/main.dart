import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget titleSection = Container(
                          padding: const EdgeInsets.all(10),
                          child:
                          Row(
                            children: [
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(bottom : 10),
                                    child : Text('Pizza Facile', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22
                                    )),
                                  ),
                                  Text('Par David Silvera',
                                      style: TextStyle(
                                          color: Colors.black45
                                      ))
                                ],
                              ),
                              ),
                              Icon(Icons.favorite, color:Colors.red),
                              Text('55')
                            ],
                          ),
                        );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text('Mes Recette'),
          ),
          body: Column(
            children: [
              titleSection
            ],
          )
      ));
  }
}


