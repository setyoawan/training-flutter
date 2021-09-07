import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 03 - ListView")),
        body: ContohListView(),
      ),
    );
  }
}

class ContohListView extends StatefulWidget {
  const ContohListView({Key? key}) : super(key: key);

  @override
  _ContohListViewState createState() => _ContohListViewState();
}

class _ContohListViewState extends State<ContohListView> {
  Widget contohScrollColumn() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 200,
          ),
          Container(
            color: Colors.green,
            width: 200,
            height: 300,
          ),
          Container(
            color: Colors.blue,
            width: 300,
            height: 300,
          ),
        ],
      ),
    );
  }

  Widget contohScrollRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Row(
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 200,
          ),
          Container(
            color: Colors.green,
            width: 200,
            height: 250,
          ),
          Container(
            color: Colors.blue,
            width: 300,
            height: 300,
          ),
        ],
      ),
    );
  }

  Widget contohListView() {
    return ListView(
      // physics: NeverScrollableScrollPhysics(),
      // physics: ClampingScrollPhysics(),
      // physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      // reverse: true,
      children: [
        Text("Contoh listview default"),
        Container(
          color: Colors.red,
          width: 100,
          height: 200,
        ),
        Container(
          color: Colors.green,
          width: 200,
          height: 300,
        ),
        Container(
          color: Colors.blue,
          width: 300,
          height: 300,
        ),
        Icon(Icons.home),
      ],
    );
  }

  Widget contohListViewBuilder() {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (buildContext, index) {
        // return Text("Berulang $index");
        return ListTile(
          leading: Icon(Icons.people),
          title: Text("Pelanggan"),
          subtitle: Text("Subjudul $index"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        );
      },
    );
  }

  Widget contohListViewBuilderArray() {
    var listPelanggan = [
      "Rouf",
      "Umam",
      "Elfas",
      "Anonim",
      "Rouf",
      "Umam",
      "Elfas",
      "Anonim",
      "Rouf",
      "Umam",
      "Elfas",
      "Anonim",
    ];

    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: listPelanggan.length,
      // reverse: true,
      itemBuilder: (buildContext, index) {
        // return Text("Berulang $index");
        return ListTile(
          leading: Icon(Icons.people),
          title: Text(listPelanggan[index]),
          subtitle: Text("Subjudul $index"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: () {
            print("klik on tap");
          },
          onLongPress: () => print("on long press"),
        );
      },
    );
  }

  Widget contohListViewBuilderSeparated() {
    var listPelanggan = [
      "Rouf",
      "Umam",
      "Elfas",
      "Anonim",
      "Rouf",
      "Umam",
      "Elfas",
      "Anonim",
      "Rouf",
      "Umam",
      "Elfas",
      "Anonim",
    ];

    // return ListView.separated(
    //   itemBuilder: itemBuilder,
    //   separatorBuilder: separatorBuilder,
    //   itemCount: itemCount,
    // );

    return ListView.separated(
      padding: EdgeInsets.all(8),
      itemCount: listPelanggan.length,
      // reverse: true,
      separatorBuilder: (buildContext, index) {
        // return Container(
        //   color: Colors.red,
        //   height: 2,
        // );
        // return Text("Pemisah");
        if (index == 4)
          return Container(
            color: Colors.red[100],
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text("Space Iklan"),
            ),
          );

        // return Text("Kosong");
        return Container();
      },
      itemBuilder: (buildContext, index) {
        // return Text("Berulang $index");
        return ListTile(
          leading: Icon(Icons.people),
          title: Text(listPelanggan[index]),
          subtitle: Text("Subjudul $index"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: () {
            print("klik on tap");
          },
          onLongPress: () => print("on long press"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    /* Silakan aktifkan salah satu return saja */
    // return contohScrollColumn();
    // return contohScrollRow();
    // return contohListView();
    // return contohListViewBuilder();
    // return contohListViewBuilderArray();
    return contohListViewBuilderSeparated();
  }
}
