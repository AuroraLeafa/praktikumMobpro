// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class profilePage extends StatelessWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profil', style: TextStyle(color: Colors.grey)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.edit,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        // ------------------------------------------------------------------
        body: const mainProfile(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class mainProfile extends StatelessWidget {
  const mainProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(25.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/reff.jfif'),
              radius: 50,
            ),
          ),
        ),
        Center( 
          child: Text(
            'Refansyach S.',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
          ),
        ),
        Center(
          child: Text(
            'refansyach.065119226@unpak.ac.id',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Center(
          child: Text(
            '0857-19xx-xxxx',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 45, vertical: 15),
          padding: EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 117, 87, 153),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('NPM', style: TextStyle(color: Colors.white)),
                Spacer(),
                Text('065119226',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right),
                IconButton(
                  icon: Icon(Icons.copy),
                  color: Colors.white,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: '065119226'));
                    Fluttertoast.showToast(
                      msg: "Text Copied",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1,
                      textColor: Colors.black
                    );
                  },
                ),
              ],
            ),
            Divider(color: Colors.white),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text('Status Keaktifan', style: TextStyle(color: Colors.white)),
                Text('Aktif',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
            Divider(color: Colors.white),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text('Program Studi', style: TextStyle(color: Colors.white)),
                Text('Ilmu Komputer',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
            Divider(color: Colors.white),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text('Jenjang Pendidikan',
                    style: TextStyle(color: Colors.white)),
                Text('S1',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
          ]),
        ),

        Container(
            margin: EdgeInsets.symmetric(horizontal: 45),
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: const <Widget>[
                    Text('Nama Lengkap',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Muhammad Refansyach Sugianto',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    
                  ],
                ),
                Divider(color: Color.fromARGB(255, 117, 87, 153)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text('Panggilan',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Refan',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ],
                ),
                Divider(color: Color.fromARGB(255, 117, 87, 153)),
                Row(
                  children: const <Widget>[
                    Text('Alamat Rumah \n',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(children: const <Widget>[
                  Text('177A Bleecker Street, New York City, NY 10012-1406',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ]),
                Divider(color: Color.fromARGB(255, 117, 87, 153)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Kartu Mahasiswa',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    IconButton(
                      icon: Icon(Icons.badge),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
