import 'package:flutter/material.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flext Demo - CodeFresher")),
      drawer: Drawer(
          child: ElevatedButton(
        child: const Text('click'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: Card(
                  elevation: 9,
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/f1.jpg',
                          width: 120,
                          height: 120,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: const [
                              Text("Lập trình Flutter",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                              Text(
                                "Thực chiến dự án app \n mobile 2022",
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                  height: 10,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Colors.green),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: Card(
                  elevation: 9,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: const [
                              Text("Lập trình \n  Androi",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                              Text(
                                "Java + kotlin",
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),

                   Image.asset(
                        'assets/images/f2.jpg',
                        width: 150,
                        height: 150,
                      ),

                    ],
                  ),
                ),
              ),
              const Divider(
                  height: 10,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Colors.green),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: Card(
                  elevation: 9,
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/f3.jpg',
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: const [
                              Text(
                                "Lập trình \n  Java Cơ bản ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "cho người \n mới bắt đầu ",
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
