// ignore_for_file: prefer_const_constructors, unused_import, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'profile.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // NAVBAR ATAS START --------------------------------------------------
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
            icon: Icon(Icons.home),
            color: Colors.white,
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "Fitur Belum Ada",
                  toastLength: Toast.LENGTH_SHORT,
                  timeInSecForIosWeb: 1,
                  textColor: Colors.black);
            }),
        title: Text('Selamat datang'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.person,
              semanticLabel: 'Profile',
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const profilePage()));
            },
          )
        ],
      ),
      // NAVBAR ATAS END --------------------------------------------------

      // Body Start --------------------------------------------------
      backgroundColor: Colors.white,
      body: ListView(
        
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 200, 
              width: 455,
              margin: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('images/puasa.webp'),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 24, bottom: 15),
            child: Text('Menu Tersedia', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 250,
            margin: EdgeInsets.only(left: 16, right: 16),
            child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Row(children: <Widget>[
                          Icon(Icons.book),
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Cari Jurnal',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Row(children: <Widget>[
                          Icon(Icons.newspaper),
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Cek Berita UNPAK',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Row(children: <Widget>[
                          Icon(Icons.contact_phone),
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Cari Kontak Dosen',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Row(children: <Widget>[
                          Icon(Icons.door_sliding_rounded),
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Buka Website UNPAK',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          )
        ],
      ),
      //Body End --------------------------------------------------

      // NAVBAR BAWAH START --------------------------------------------------
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 117, 87, 153),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Keuangan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Perkuliahan',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
      // NAVBAR BAWAH END --------------------------------------------------
    );
  }
}
