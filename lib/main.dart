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
    final _user = new TextEditingController();

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
                  gradient: LinearGradient(colors: [
                Color(0xFF64718C),
                Color(0xFF64718C),
              ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 400,
                      height: 200.0,
                      child: Image(
                        image: AssetImage('assets/sgp-logo.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 20.0,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Central do assinante',
              style: TextStyle(
                  color: Color(0xFF64718C),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic),
            ),
            Divider(
              color: Color(0xFF64718C),
              height: 20.0,
              thickness: 5.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Aqui vai o switcher Login/Senha ou CPF/CNPJ'),
            ),
            Divider(
              color: Color(0xFF64718C),
              height: 40.0,
              thickness: 5.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
            Container(
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                controller: _user,
                style:
                new TextStyle(color: Colors.deepPurple, fontSize: 22),
                decoration: InputDecoration(
                  labelText: "Matricula",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
