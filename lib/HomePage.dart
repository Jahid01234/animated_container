import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Animated Container Example"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
               duration: Duration(seconds: 2),
               curve:Curves.easeIn ,
               height: _value==false?150:200,
               width: _value==false?150:200,
               decoration: BoxDecoration(
                 color: Colors.cyan,
               ),

            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add) ,
        onPressed: (){
          setState(() {
            _value = !_value;
          });
        },
      ),
    );
  }
}
