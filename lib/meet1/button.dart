import 'package:flutter/material.dart';

class cobaRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PT SISI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContohRaisedButton(),
    );
  }
}

class ContohRaisedButton extends StatefulWidget {
  const ContohRaisedButton({Key? key}) : super(key: key);

  @override
  _ContohRaisedButtonState createState() => _ContohRaisedButtonState();
}

class _ContohRaisedButtonState extends State<ContohRaisedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Raised Button"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RaisedButton(
              color: Colors.amberAccent,
              child: Text("Ini RaisedButton"),
              elevation: 10,
              // Cara untuk disable
              // onLongPress: null,
              onPressed: () {
                print("Saya telah klik RaisedButton");
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Center(
            child: Container(
              child: RaisedButton.icon(
                  onPressed: () {
                    print("Contoh button yanhg ada iconnya");
                  },
                  icon: Icon(Icons.star),
                  label: Text("Contoh Icon Button")),
            ),
          ),
          // untuk maximize ukuran button
          Container(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Button Full Width"),
              onPressed: () {
                print("Ini Contoh Full width");
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Flat Button ======================

class cobaFlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PT SISI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContohFlatButton(),
    );
  }
}

class ContohFlatButton extends StatefulWidget {
  const ContohFlatButton({Key? key}) : super(key: key);

  @override
  _ContohFlatButtonState createState() => _ContohFlatButtonState();
}

class _ContohFlatButtonState extends State<ContohFlatButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Flat Button"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FlatButton(
                child: Text("Ini Flat Button"),
                color: Colors.redAccent,
                onPressed: () {
                  print("Saya telah klik FlatButton");
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3))),
          ),
        ],
      ),
    );
  }
}

// Outline Button

class cobaOutlineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PT SISI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContohOutlineButton(),
    );
  }
}

class ContohOutlineButton extends StatefulWidget {
  const ContohOutlineButton({Key? key}) : super(key: key);

  @override
  _ContohOutlineButtonState createState() => _ContohOutlineButtonState();
}

class _ContohOutlineButtonState extends State<ContohOutlineButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Outline Button"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: OutlineButton(
                child: Text("Ini OutlineButton"),
                borderSide: BorderSide(color: Colors.blue),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  print("Ini contoh OutlineButton");
                },
              ),
            ),
          ),
          Center(
            child: Container(
              child: OutlineButton.icon(
                  onPressed: () {
                    print("Contoh outline button with Icon");
                  },
                  icon: Icon(Icons.subscript_sharp),
                  label: Text("Outline Icon")),
            ),
          ),
        ],
      ),
    );
  }
}

// Icon Button =====================

class cobaIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PT SISI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContohIconButton(),
    );
  }
}

class ContohIconButton extends StatefulWidget {
  const ContohIconButton({Key? key}) : super(key: key);

  @override
  _ContohIconButtonState createState() => _ContohIconButtonState();
}

class _ContohIconButtonState extends State<ContohIconButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: IconButton(
              icon: Icon(Icons.work),
              onPressed: () {
                print("Saya telah klik IconButton");
              },
            ),
          ),
        ],
      ),
    );
  }
}

// InkWell

class cobaInkWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PT SISI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContohInkWell(),
    );
  }
}

class ContohInkWell extends StatefulWidget {
  const ContohInkWell({Key? key}) : super(key: key);

  @override
  _ContohInkWellState createState() => _ContohInkWellState();
}

class _ContohInkWellState extends State<ContohInkWell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              child: Text("Ini Inkwell"),
              onTap: () {
                print("Saya telah klik InkWell");
              },
            ),
          ),
        ],
      ),
    );
  }
}
