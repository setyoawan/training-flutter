import 'package:flutter/material.dart';

class cobaGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 03 - GridView")),
        body: ContohGridView(),
      ),
    );
  }
}

class ContohGridView extends StatefulWidget {
  const ContohGridView({Key? key}) : super(key: key);

  @override
  _ContohGridViewState createState() => _ContohGridViewState();
}

class _ContohGridViewState extends State<ContohGridView> {
  Widget _contohGridViewCount() {
    return GridView.count(
      crossAxisCount: 2,
      // reverse: true,
      childAspectRatio: 80 / 120,
      // padding: EdgeInsets.only(left: 16),
      mainAxisSpacing: 4,
      crossAxisSpacing: 16,
      children: [
        FlutterLogo(size: 60),
        Column(
          children: [
            FlutterLogo(size: 60),
          ],
        ),
        FlutterLogo(size: 60),
        FlutterLogo(size: 60),
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.blue),
      ],
    );
  }

  Widget _contohGridViewCountHorizontal() {
    return Container(
      height: 200,
      child: Scrollbar(
        child: GridView.count(
          crossAxisCount: 2,
          // reverse: true,
          childAspectRatio: 80 / 120,
          // padding: EdgeInsets.only(left: 16),
          // mainAxisSpacing: 4,
          // crossAxisSpacing: 16,
          scrollDirection: Axis.horizontal,
          children: [
            FlutterLogo(size: 60),
            Column(
              children: [
                FlutterLogo(size: 50),
                FlutterLogo(size: 50),
              ],
            ),
            Row(
              children: [
                FlutterLogo(size: 50),
                FlutterLogo(size: 50),
                FlutterLogo(size: 50),
                // FlutterLogo(size: 50),
              ],
            ),
            FlutterLogo(size: 60),
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue),
          ],
        ),
      ),
    );
  }

  Widget _contohGridViewBuilderHorizontal() {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (buildContext, index) {
        return FlutterLogo(size: 60);
      },
      itemCount: 8,
    );
  }

  Widget _gridItem(String namaBulan) {
    return Column(
      children: [
        Expanded(child: FlutterLogo(size: double.infinity)),
        Text(namaBulan, style: TextStyle(fontSize: 25)),
      ],
    );
  }

  Widget _contohGridViewBuilderHorizontalArray() {
    var listBulan = ["jan", "feb", "mar", "apr", "mei", "jun"];

    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      reverse: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (buildContext, index) {
        return _gridItem(listBulan[index]);
      },
      itemCount: listBulan.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    /* pilih salah satu nama fungsi */
    return _contohGridViewCount();
    // return _contohGridViewCountHorizontal();
    // return _contohGridViewCountHorizontal(),
    // return _contohGridViewBuilderHorizontal(),
    // return _contohGridViewBuilderHorizontalArray(),

//     return ListView(
//       children: [
//         _contohGridViewCountHorizontal(),
//         _contohGridViewBuilderHorizontal(),
//         _contohGridViewBuilderHorizontalArray(),
//       ],
//     );
  }
}
