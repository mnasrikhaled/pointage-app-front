import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:pointageapp/core/constant/routesnames.dart';
import 'package:pointageapp/view/widget/auth/logoauth.dart';

class ScannerQrCode extends StatefulWidget {
  const ScannerQrCode({super.key});

  @override
  State<ScannerQrCode> createState() => _ScannerQrCodeState();
}

class _ScannerQrCodeState extends State<ScannerQrCode> {
  String _scanBarcode = '.......';

  @override
  void initState() {
    super.initState();
  }

  Future<void> scanQR() async {
    String barcodeScanRes;

    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              elevation: 0.1,
              leading: IconButton(
                onPressed: () {
                  Get.offAllNamed(AppRoute.homeetudiant);
                },
                iconSize: 25,
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
              ),
              title: const Text(" ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color.fromARGB(255, 52, 55, 57))),
            ),
            body: Builder(builder: (BuildContext context) {
              return ListView(
                children: [
                  const LogoAuth(),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Flex(
                          direction: Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ElevatedButton(
                                onPressed: () => scanQR(),
                                child: Text('Start QR scan')),
                            SizedBox(
                              height: 20,
                            ),
                            Text(' résultats du code QR : $_scanBarcode\n',
                                style: TextStyle(fontSize: 20))
                          ])),
                ],
              );
            })));
  }
}
