import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  String? amountInput;

  bool check = true;

  void _checkPrime(int pre) {
    for(int i = 2 ; i < pre - 1 ; i++) {
      if(pre % i == 0) {
        check = false;
      }else{
        check = true;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text("App Prime")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [

                TextField(
                  decoration:const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'enter input'),
                  keyboardType: TextInputType.number,
                  onChanged:(val) {
                    amountInput = val ;
                  },
                ),

                const  ElevatedButton(onPressed: null, child: Text("kiểm Tra"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
