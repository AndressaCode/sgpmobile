import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Central de Tickets Mobile',
//            style: TextStyle(color: Colors.grey[200])),
//        centerTitle: true,
//        backgroundColor: Colors.grey,
//      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.height * 4,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepOrange,
                    Colors.deepOrange,
                  ]
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.airplay, size: 65, color: Colors.white),
                  SizedBox(height: 12),
                  Text('Colocar logo aqui',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Roboto',),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            Container(),
          ],
        ),
      ),
    );
  }
}
