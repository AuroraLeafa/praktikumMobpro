// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: ListView(
                physics: const ClampingScrollPhysics(),
                children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 125),
                  child: Image.asset('images/logo.png', height: 225)
                  ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 30, right: 50),
                child: Column(children: <Widget>[
                  Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 158, 21, 12)))),
                    ),
                  ),
                  Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 158, 21, 12)))),
                    ),
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, right: 60, left: 60),
                child: ElevatedButton(
     
                  style: ElevatedButton.styleFrom(
                    
                    primary: Colors.deepPurple
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: Text('Masuk'),
                ),
              ),
              Container(
                child: TextButton(
                  child: Text('Belum punya akun? Daftar disini',
                      style: TextStyle(fontSize: 12, color: Colors.black, height: 3),
                      textAlign: TextAlign.center),
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: "Hubungi PUTIK untuk pendaftaran",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1,
                      textColor: Colors.black
                    );
                  },
                ),
              ),
            ])));
  }
}
