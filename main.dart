import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Diri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Diri'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                  'assets/images/myphoto.jpg'), // Ganti dengan path foto Anda
            ),
            SizedBox(height: 20),
            Text(
              'SUPRIYONO',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'JL. RAYA PLIKEN RT 03 RW 07 NO. 7 KEC. KEMBARAN',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('085742787977'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('supriono23102002@gmail.com'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
