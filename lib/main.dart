import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _MyAppState();
  int scoreAteam = 0;

  int scoreBteam = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.back_hand),
        title: const Text('Points Counter'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Team A', style: TextStyle(fontSize: 32)),
                    Text('$scoreAteam', style: TextStyle(fontSize: 130)),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scoreAteam++;
                          });
                        },
                        child: const Text('Add 1 point',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scoreAteam += 2;
                          });
                        },
                        child: const Text('Add 2 points',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scoreAteam += 3;
                          });
                        },
                        child: const Text('Add 3 points',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        )),
                  ],
                ),
              ),
              Container(
                height: 500,
                child: VerticalDivider(
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Team B', style: TextStyle(fontSize: 32)),
                    Text('$scoreBteam', style: TextStyle(fontSize: 130)),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scoreBteam++;
                          });
                        },
                        child: Text('Add 1 point',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scoreBteam += 2;
                          });
                        },
                        child: Text('Add 2 points',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scoreBteam += 3;
                          });
                        },
                        child: Text('Add 3 points',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        )),
                  ],
                ),
              )
            ],
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  scoreAteam = 0;
                  scoreBteam = 0;
                });
              },
              child: Text('reset',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
              )),
        ],
      ),
    ));
  }
}
