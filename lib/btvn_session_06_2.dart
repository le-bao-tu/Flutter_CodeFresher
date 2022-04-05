import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          title: const Text("Edit Product"),
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.library_books, color: Colors.white))
          ],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
                padding:EdgeInsets.only(bottom: 180),
                decoration:const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end : Alignment.bottomLeft,
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration:const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end : Alignment.bottomLeft,
                          colors: [
                            Colors.blue,
                            Colors.red,
                          ],
                        ),
                      ),
                      padding:
                          const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                      child: Row(
                        children: [
                          const Expanded(
                            flex: 1,
                            child: Text(
                              "Expanded",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(16.0),
                                        bottomRight: Radius.circular(16.0),
                                      ),
                                    ),
                                    height: 20,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            backgroundColor: Colors.amber,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                    ),
                                    height: 20,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            backgroundColor: Colors.amber,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16.0),
                                        bottomLeft: Radius.circular(16.0),
                                      ),
                                    ),
                                    height: 20,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            backgroundColor: Colors.amber,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Title',
                              hintText: 'enter input . . .  ',
                              hintStyle: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                            maxLength: 100,
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Price',
                              hintText: 'enter input . . .  ',
                              hintStyle: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            maxLength: 10,
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Descripton',
                              hintText: 'enter input . . .  ',
                              hintStyle: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                            maxLength: 200,
                            textInputAction: TextInputAction.next,
                          ),
                          Row(

                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    color:Colors.white
                                  ),
                                child:const IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.collections,color: Colors.purple,),
                                ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                flex:3,
                                child:  TextField(
                                  decoration: InputDecoration(
                                    labelText: 'image URL . . .',
                                    hintText: 'enter input . . .  ',
                                    hintStyle: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),

                                  maxLength: 200,
                                  keyboardType: TextInputType.url,
                                  textInputAction: TextInputAction.next,
                                ),

                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

          ),
        ),
      ),
    );
  }
}
