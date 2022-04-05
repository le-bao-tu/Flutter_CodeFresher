import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  final formkey = GlobalKey<FormState>();
  late  int _numberone;
  late  int _numbertow;
  var tong;

  final fieldTextone = TextEditingController();
  final fieldTexttow = TextEditingController();

  void clearTextone() {
    setState(() {
      fieldTextone.clear();
    });
  }



  void clearTexttow() {
    setState(() {
      fieldTexttow.clear();
    });
  }

  int _phepcong(int num1, int num2) {
    return tong = num1 + num2;
  }

  int _pheptru(int num1, int num2) {
    return tong = num1 - num2;
  }

  int _phepnhan(int num1, int num2) {
    return tong = num1 * num2;
  }

  double _phepchia(int num1, int num2) {
    return tong = num1 / num2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MyHomePage")),
      drawer: Drawer(
        child: ElevatedButton(
          child: const Text('click'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: 150,
                  child: Image.asset('assets/images/hinh-ve-cute(1).jpg',
                      fit: BoxFit.cover),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration:  InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: clearTextone,
                              icon:const Icon(Icons.clear),
                            ),
                            labelText: 'ennter input ....',
                            border:const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            hintText: 'nhập vào số a ',
                            hintStyle: const TextStyle(
                              color: Colors.red,
                            ),

                            fillColor: Colors.black12,
                            filled: true,
                          ),
                          controller: fieldTextone,
                          textAlign: TextAlign.center,
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          validator: (val) {
                            if (val!.isEmpty ||
                                !RegExp(r'^[0-9]+$').hasMatch(val)) {

                              return "vui lòng không được để trống ! và nhập đúng đinh dạng  ";
                            } else {
                              _numberone = int.parse(val);
                            }
                          },

                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration:  InputDecoration(
                           // prefixIcon: nó nằm ở bên phải input ,
                           //  suffixIcon nó nằm ở bên trái

                            suffixIcon: IconButton(
                              onPressed: clearTexttow,
                              icon:const Icon(Icons.clear),
                            ),
                            labelText: 'ennter input ....',
                            border:const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),

                            hintText: 'nhập vào số b ',
                            hintStyle:const TextStyle(
                              color: Colors.red,
                            ),

                            fillColor: Colors.black12,
                            filled: true,
                          ),
                          controller: fieldTexttow,
                          textAlign: TextAlign.center,
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          validator: (val) {
                            if (val!.isEmpty ||
                                !RegExp(r'^[0-9]+$').hasMatch(val)) {
                              return "vui lòng không được để trống ! và nhập đúng đinh dạng  ";
                            } else {
                              _numbertow = int.parse(val);
                            }
                          },
                          textInputAction: TextInputAction.next,
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  tong != null ? "Kết Quả : ${tong}" : "kết Quả : 0 ",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  margin:const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(

                        onPressed: () {
                          setState(() {
                            if (formkey.currentState!.validate()) {
                              _phepcong(_numberone, _numbertow);
                            }
                          });
                        },
                        child: const Text(
                          "+",
                          style: TextStyle(fontSize: 30),
                        ),

                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          elevation: 9,
                          shadowColor: Colors.purple,
                        ),

                      ),
                      ElevatedButton(

                        onPressed: () {
                          setState(() {
                            if (formkey.currentState!.validate()) {
                              _pheptru(_numberone, _numbertow);
                            }
                          });
                        },
                        child: const Text(
                          "-",
                          style: TextStyle(fontSize: 30),
                        ),

                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          elevation: 9,
                          shadowColor: Colors.redAccent,
                        ),
                      ),
                      ElevatedButton(

                        onPressed: () {
                          setState(() {
                            if (formkey.currentState!.validate()) {
                              _phepnhan(_numberone, _numbertow);
                            }
                          });
                        },
                        child: const Text(
                          "x",
                          style: TextStyle(fontSize: 30),
                        ),

                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          elevation: 9,
                          shadowColor: Colors.green,
                        ),
                      ),
                      ElevatedButton(

                        onPressed: () {
                          setState(() {
                            if (formkey.currentState!.validate()) {
                              _phepchia(_numberone, _numbertow);
                            }
                          });
                        },
                        child: const Text(
                          ":",
                          style: TextStyle(fontSize: 30),
                        ),

                        style: ElevatedButton.styleFrom(
                          primary: Colors.amberAccent,
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          elevation: 9,
                          shadowColor: Colors.amberAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
