import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class LoginUsuario extends StatefulWidget {
  @override
  _LoginUsuarioState createState() => _LoginUsuarioState();
}

class _LoginUsuarioState extends State<LoginUsuario> {
  @override
  Widget build(BuildContext context) {
    final _user = new TextEditingController();
    var cpfController = new MaskedTextController(mask: '000.000.000-00');

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.height * 10,
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.white,
                    Colors.grey[300],
                  ])),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      height: 200.0,
                      child: Image(
                        image: AssetImage('assets/sgp-logo-grey.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Color(0xFF554E54),
              thickness: 20.0,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Central do assinante',
              style: TextStyle(
                  color: Color(0xFF554E54),
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  fontStyle: FontStyle.italic),
            ),
//            Divider(
//              color: Color(0xFF054B9A),
//              height: 20.0,
//              thickness: 2.0,
//              indent: 30.0,
//              endIndent: 30.0,
//            ),
            Center(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Text('CPF/CNPJ',
                        style: TextStyle(fontSize: 15.0, color: Color(0xFF554E54))),

                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Login/Senha',
                        style: TextStyle(fontSize: 15.0, color: Color(0xFF554E54))),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              width: 300.0,
              height: 50.0,
              child: TextFormField(
                controller: cpfController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Color(0xFF554E54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xFF554E54),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color(0xFF88898C),
                        width: 1.0,
                      )),
                  hintText: 'Documento',
                  hintStyle: TextStyle(fontSize: 15.0, color: Color(0xFF554E54)),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 300.0,
              height: 50.0,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Color(0xFF554E54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xFF554E54),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color(0xFF88898C),
                        width: 1.0,
                      )),
                  hintText: 'Senha',
                  hintStyle: TextStyle(fontSize: 15.0, color: Color(0xFF554E54)),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 200.0,
              height: 50.0,
              child: FlatButton(
                color: Color(0xFFEC8F00),
                splashColor: Colors.blueAccent,
                onPressed: () {},
                shape: StadiumBorder(),
                child: Text(
                  'Acessar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Divider(
              color: Color(0xFF054B9A),
              height: 20.0,
              thickness: 2.0,
              indent: 30.0,
              endIndent: 30.0,
            ),
            Container(
              width: 300.0,
              height: 100.0,
//              color: Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'RECUPERAR SENHA/ ',
                          style: TextStyle(
                              color: Color(0xFF054B9A),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'PRIMEIRO ACESSO',
                          style: TextStyle(
                              color: Color(0xFF054B9A),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Center(
                      child: Container(
                        width: 100.0,
                        height: 50.0,
                        child: OutlineButton(
                          color: Color(0xFFEC8F00),
                          onPressed: () {},
                          child: Text('Acessar',
                              style: TextStyle(
                                  color: Color(0xFFEC8F00),
                                  fontWeight: FontWeight.bold)),
                          borderSide: BorderSide(color: Colors.blue),
                          shape: StadiumBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
