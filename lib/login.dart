import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[150],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 250, 40, 0),
            child: Column(
              children: [
                Text(
                  'Имя',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.lightBlue[900],
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Имя',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[50]),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[50]),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.blue[50],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Телефон',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.lightBlue[900],
                  ),
                  textAlign: TextAlign.right,
                ),
                TextField(
                    decoration: InputDecoration(
                      hintText: 'Номер',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue[50]),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue[50]),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.blue[50],
                    ),
                    keyboardType: TextInputType.number),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                  color: Colors.lightBlue[900],
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text('Отправить'),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/3', (route) => true);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
