import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contador 1 ou 10 und",
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu contador"),
        centerTitle: true
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text(
            "Contador: 0",
            style: TextStyle(
                fontSize: 33.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
            )
          )
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){}, // callback do evento
                  child: const Text( // texto com a info do botão
                    "+",
                    style: TextStyle(
                      fontSize: 27.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"
                    )
                  )
                ),
                ElevatedButton(
                  onPressed: (){}, // callback do evento
                  child: const Text( // texto com a info do botão
                    "-",
                    style: TextStyle(
                      fontSize: 27.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"
                    )
                  )
                ),
              ]
          )
        ]
      )
    );
  }
}