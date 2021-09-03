import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Button"),
      ),
      body: Container(
        child: RaisedButton(
          child: Text("ini Button"),
          onPressed: () {
            print("button ini di klik");
          },
          onLongPress: (){
            print("button di klik panjang");
          },
          color: Colors.amberAccent, 
        ),                     
      ),
    );
  }
}