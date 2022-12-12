
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:startup_namer/home.dart';
import 'package:startup_namer/pertemuan1.dart';
import 'package:startup_namer/splashscreen.dart';
import 'splashscreen.dart';

void main(){
  runApp(const MaterialApp(
    home: Splashscreen (title: 'CRUD')
));
}
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return new SplashScreen(
//       backgroundColor: Colors.deepPurpleAccent,
//       seconds: 10,
//       navigateAfterSeconds: Pertemuan1(title: "Pertemuan1"),
//       title: new Text('Contoh SplashScreen'),
//       image: Image.asset('images/download.png'),
//       photoSize: 10.0,
//     );
//   }
//   }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 2;
//
//   void _incrementCounter() {
//     setState(() {
//
//       _counter++;
//     });
//   }
//
//   void navigateLogin()async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     int? isLogin = pref.getInt("is_login");
//     if(isLogin == 1){
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Pertemuan1(title: "Pertemuan 1")),
//       );
//     }
//   }
//
//
//   @override
//   void initState() {
//     navigateLogin();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//
//         title: Text(widget.title),
//       ),
//       body: Center(
//
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextFormField(
//               decoration: new InputDecoration(
//                   labelText:  "Username",
//                   hintText: "Teks yang akan dimasukkan",
//                   border: OutlineInputBorder(
//                       borderRadius: new BorderRadius.circular(5)
//                   )
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.all(5)
//             ),
//             TextFormField(
//               decoration: new InputDecoration(
//                   labelText:  "Password",
//                   hintText: "Teks yang akan dimasukkan",
//                   border: OutlineInputBorder(
//                       borderRadius: new BorderRadius.circular(5)
//                   )
//               ),
//             ),
//             ElevatedButton(
//                 child: Text(
//               "Login"
//               ),
//               onPressed: () async {
//                   SharedPreferences pref = await SharedPreferences.getInstance();
//                   await pref.setInt("is_login", 1);
//                   Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Pertemuan1(title: "Pertemuan 1",)),
//                 );
//               },
//             )
//           ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: const Icon(Icons.add),
//       // ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
//}