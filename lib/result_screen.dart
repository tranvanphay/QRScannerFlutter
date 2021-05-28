import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  String result;
  ResultScreen({required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan result screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Data $result",
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Data lenght: ${result.length}",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
