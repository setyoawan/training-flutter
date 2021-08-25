import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.red,
            ),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            height: 70,
            width: 70,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.green,
                ),
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                height: 70,
                width: 70,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.green,
                ),
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                height: 70,
                width: 70,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.green,
                ),
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                height: 70,
                width: 70,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.green,
                ),
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                height: 70,
                width: 70,
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.blue,
            ),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            height: 70,
            width: 70,
          ),
        ],
      ),
    );
  }
}