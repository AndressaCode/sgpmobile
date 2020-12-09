import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class LoginUsuario extends StatefulWidget {
  @override
  _LoginUsuarioState createState() => _LoginUsuarioState();
}

class _LoginUsuarioState extends State<LoginUsuario> {
  int index = 0;

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
            SizedBox(height: 30.0),
            Text(
              'Central do assinante',
              style: TextStyle(
                  color: Color(0xFF554E54),
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0
              ),
            ),
            SizedBox(height: 10.0),
            IndexedStack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.grey[600],
                      child: FlatButton(
                        onPressed: () {
                          if (index == 2) {
                            setState(() {
                              index = 0;
                            });
                          } else setState(() {
                            index++;
                          });
                        },
                        child: Text('Login/Senha',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),),
                      ),
                    ),
                    Container(
                      color: Colors.grey[600],
                      child: FlatButton(
                        onPressed: () {},
                        child: Text('CPF/CNPJ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 25.0),
            Container(
              width: 300.0,
              child: Divider(
                color: Colors.grey[300],
                height: 20.0,
                thickness: 2.0,
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
                    Icons.person_outline,
                    color: Color(0xFF554E54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Color(0xFF554E54),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Color(0xFF88898C),
                        width: 1.0,
                      )),
                  hintText: 'Login',
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
                    Icons.lock_open,
                    color: Color(0xFF554E54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Color(0xFF554E54),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Color(0xFF88898C),
                        width: 1.0,
                      )),
                  hintText: 'Senha',
                  hintStyle: TextStyle(fontSize: 15.0, color: Color(0xFF554E54)),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              width: 300.0,
              child: Divider(
                color: Colors.grey[300],
                height: 20.0,
                thickness: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 300.0,
              height: 40.0,
              child: FlatButton(
                color: Color(0xFF167BEA),
                splashColor: Colors.blueAccent,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  'Acessar',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 300.0,
              child: Divider(
                color: Colors.grey[300],
                height: 20.0,
                thickness: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
