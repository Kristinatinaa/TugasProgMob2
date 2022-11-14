import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:startup_namer/main.dart';

class Pertemuan1 extends StatefulWidget {
  const Pertemuan1({super.key, required this.title});

  final String title;

  @override
  State<Pertemuan1> createState() => _Pertemuan1State();
}
class _Pertemuan1State extends State<Pertemuan1> {
  int _counter = 2;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: new InputDecoration(
                  labelText:  "Username",
                  hintText: "Teks yang akan dimasukkan",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5)
                  )
              ),
            ),
            Padding(
                padding: EdgeInsets.all(5)
            ),
            TextFormField(
              decoration: new InputDecoration(
                  labelText:  "Password",
                  hintText: "Teks yang akan dimasukkan",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5)
                  ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text(
              "Submit",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            ),
            ElevatedButton(
              child: Text(
                  "Logout"
              ),
              onPressed: () async {
                SharedPreferences pref = await SharedPreferences.getInstance();
                await pref.setInt("is_login", 0);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: "Home Page",)),
                );
              },
            ),
    ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}