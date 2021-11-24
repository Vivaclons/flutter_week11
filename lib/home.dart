import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('7 food на карте'),
        backgroundColor: Colors.blueGrey[600],
      ),
      body: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                    margin: const EdgeInsets.fromLTRB(45, 20, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      color: Colors.blueGrey[600],
                    ),
                    child: Text(
                      'Список',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      border: Border.all(
                        width: 1,
                        color: Colors.blueGrey[600],
                        style: BorderStyle.solid,
                      ),
                      color: Colors.white,
                    ),
                    child: Text(
                      "На Карте",

                      // title: Text(
                      //   'На карте',
                      //   style: TextStyle(color: Colors.blueGrey[600]),
                      // ),
                      // onTap: () {
                      //   ElevatedButton(
                      //     onPressed: () {
                      //       print('object');
                      //       Navigator.pushNamedAndRemoveUntil(
                      //           context, '/2', (route) => false);
                      //     },
                      //     child: null,
                      //   );
                      // },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Icon(Icons.arrow_forward_ios),
                        Text(
                            " Бекешева 78\n 21x Наурызбайский район,\n мкр Акжар,\n улица Бекешева 79/2")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Icon(Icons.arrow_forward_ios),
                        Text(
                            " Бекешева 78\n 21x Наурызбайский район,\n мкр Акжар,\n улица Бекешева 79/2")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Icon(Icons.arrow_forward_ios),
                        Text(
                            " Бекешева 78\n 21x Наурызбайский район,\n мкр Акжар,\n улица Бекешева 79/2")
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
