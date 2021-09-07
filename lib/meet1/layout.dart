import 'package:flutter/material.dart';

class cobaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 02 - Row")),
        body: RowPage(),
      ),
    );
  }
}

class RowPage extends StatefulWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  _RowPageState createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.red,
          ),
          margin: EdgeInsets.all(8),
          height: 70,
          width: 70,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.green,
          ),
          margin: EdgeInsets.all(8),
          height: 70,
          width: 70,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.blue,
          ),
          margin: EdgeInsets.all(8),
          height: 70,
          width: 70,
        ),
      ],
    );
  }
}

// Column ===========================

class cobaColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 02 - Column")),
        body: ColumnPage(),
      ),
    );
  }
}

class ColumnPage extends StatefulWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  _ColumnPageState createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.red,
          ),
          margin: EdgeInsets.all(8),
          height: 70,
          width: 70,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.green,
          ),
          margin: EdgeInsets.all(8),
          height: 70,
          width: 70,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.blue,
          ),
          margin: EdgeInsets.all(8),
          height: 70,
          width: 70,
        ),
      ],
    );
  }
}

// Stack ===========================

class cobaStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 02 - Stack")),
        body: StackPage(),
      ),
    );
  }
}

class StackPage extends StatefulWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      overflow: Overflow.visible,
      fit: StackFit.loose,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            color: Colors.red,
          ),
          // margin: EdgeInsets.all(8),
          height: 200,
          width: double.infinity,
        ),
        Positioned(
            bottom: -40,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.blue,
              ),
              margin: EdgeInsets.all(8),
              height: 70,
              width: MediaQuery.of(context).size.width - 100,
            )),
        Positioned(
          bottom: -55,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            margin: EdgeInsets.all(8),
            height: 100,
            width: 100,
          ),
        ),
      ],
    );
  }
}

// Expanded =========================

class cobaExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 02 - Expanded")),
        body: ExpandedPage(),
      ),
    );
  }
}

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  _ExpandedPageState createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.red,
                ),
                margin: EdgeInsets.all(8),
                height: 70,
                width: 70,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.green,
              ),
              margin: EdgeInsets.all(8),
              height: 70,
              width: 70,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.blue,
              ),
              margin: EdgeInsets.all(8),
              height: 70,
              width: 70,
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.red,
                ),
                margin: EdgeInsets.all(8),
                height: 70,
                width: 70,
                child: Center(
                    child: Text(
                  "flex = 3",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.green,
                ),
                margin: EdgeInsets.all(8),
                height: 70,
                width: 70,
                child: Center(
                    child: Text(
                  "flex = 2",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Flexible ========================

class cobaFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 02 - Flexible")),
        body: ExpandedPage(),
      ),
    );
  }
}

class ExpandedPage_ extends StatefulWidget {
  const ExpandedPage_({Key? key}) : super(key: key);

  @override
  __ExpandedPageState createState() => __ExpandedPageState();
}

class __ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.red,
                  ),
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(5),
                  height: 70,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.green,
                  ),
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(5),
                  height: 70,
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.blue,
                  ),
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(5),
                  height: 70,
                ),
              ),
            ],
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.green,
              ),
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(5),
              height: 50,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.green,
              ),
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(5),
              height: 310,
            ),
          ),
        ],
      ),
    );
  }
}
