import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class FingerApp extends StatefulWidget {
  @override
  FingerAppState createState() => FingerAppState();
}

class FingerAppState extends State<FingerApp> {
  final LocalAuthentication localAuthentication = LocalAuthentication();
  bool check = false;
  String checkA = " ";
  List<BiometricType> listB = List<BiometricType>();

  Future<void> authenticationCheck() async {
    bool check = false;

    if (!mounted){
      return;
    }

    try {
      check = await localAuthentication.authenticateWithBiometrics(
        localizedReason: "At the first authorize",
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (error) {
      print(error);
    }
    setState(() {
      if (check) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/', (route) => true);
      } else {
        checkA = "Authorize again";
      }
    });

  }

  Future<void> checkB() async {
    bool check = false;

    if (!mounted) {
      return;
    }

    try {
      check = await localAuthentication.canCheckBiometrics;
    } on PlatformException catch (error) {
      print(error);
    }

    setState(() {
      check = check;
    });

  }

  Future<void> list() async {

    if (!mounted) {
      return;
    }

    List<BiometricType> list;
    try {
      list = await localAuthentication.getAvailableBiometrics();
    } on PlatformException catch (error) {
      print(error);
    }

    setState(() {
      listB = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Authorized : $checkA"),
            RaisedButton(
              onPressed: authenticationCheck,
              color: Colors.blueGrey[600],
              colorBrightness: Brightness.light,
            ),
            Text("Check : $checkB"),
            RaisedButton(
              onPressed: checkB,
              color: Colors.blueGrey[600],
              colorBrightness: Brightness.light,
            ),
            Text("Choose: ${listB.toString()}"),
            RaisedButton(
              onPressed: list,
              color: Colors.blueGrey[600],
              colorBrightness: Brightness.light,
            ),
          ],
        ),
      ),
    );
  }
}
