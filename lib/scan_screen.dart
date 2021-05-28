import 'package:demo_mobile_web/app_barcode_scanner_widget.dart';
import 'package:demo_mobile_web/result_screen.dart';
import 'package:flutter/material.dart';

class ScanScreen extends StatefulWidget {
  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String _code = '';
  bool isResult = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo scan QR"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Text("「$_code」"),
          ),
          Expanded(
            flex: 9,
            child: AppBarcodeScannerWidget.defaultStyle(
              resultCallback: (String code) {
                setState(() {
                  if (!isResult) {
                    isResult = true;
                    _code = code;
                    print("Has result $code");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(result: code)));
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
