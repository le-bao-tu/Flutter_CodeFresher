import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Your Products"),
          actions: const [IconButton(onPressed: null, icon: Icon(Icons.add))],
        ),
        drawer: Drawer(
          child: ElevatedButton(
            child: const Text('click'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/hinh-ve-cute(1).jpg'),
                            radius: 30,

                          ),
                          Text("Product 1", style:TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      )
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.create,color: Colors.purple,),
                          ),
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.domain,color:Colors.green),
                          ),
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.delete_sweep,color:Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 5,
                  endIndent: 5,
                  color: Colors.black12),

              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/hinh-ve-cute(1).jpg'),
                              radius: 30,

                            ),
                            Text("Product 1", style:TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        )
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.create,color: Colors.purple,),
                          ),
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.domain,color:Colors.green),
                          ),
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.delete_sweep,color:Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
