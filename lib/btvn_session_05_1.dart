import 'package:flutter/material.dart';
import './Screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
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
      appBar: AppBar(
        title: const Text('MyShop'),
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.shopping_cart, color: Colors.white))
        ],
      ),
      drawer: Drawer(
        child: ElevatedButton(
          child: const Text('click '),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
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
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.all(10),
            children: [
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: ExactAssetImage(
                      'assets/images/hinh-ve-cute(1).jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                  child: Container(

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      const  IconButton(onPressed: null, icon: Icon(Icons.add,color: Colors.red,),),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
                        }, child:const Text('Demo')),
                      const  IconButton(onPressed: null, icon: Icon(Icons.shopping_cart,color: Colors.red)),
                      ],
                    ),
                  ),

              ),
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: ExactAssetImage('assets/images/hinh-ve-cute(1).jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const  IconButton(onPressed: null, icon: Icon(Icons.add,color: Colors.red,),),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
                      }, child:const Text('Demo')),
                      const  IconButton(onPressed: null, icon: Icon(Icons.shopping_cart,color: Colors.red)),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: ExactAssetImage('assets/images/hinh-ve-cute(1).jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const  IconButton(onPressed: null, icon: Icon(Icons.add,color: Colors.red,),),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
                      }, child:const Text('Demo')),
                      const  IconButton(onPressed: null, icon: Icon(Icons.shopping_cart,color: Colors.red)),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: ExactAssetImage('assets/images/hinh-ve-cute(1).jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const  IconButton(onPressed: null, icon: Icon(Icons.add,color: Colors.red,),),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
                      }, child:const Text('Demo')),
                      const  IconButton(onPressed: null, icon: Icon(Icons.shopping_cart,color: Colors.red)),
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
