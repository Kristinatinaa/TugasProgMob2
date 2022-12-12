import 'package:flutter/material.dart';
import 'package:startup_namer/mahasiswa/mahasiswa_get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const  MyApp({Key? key});
  static const appTitle = 'Percobaan Drawer';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('Selamat Datang'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/download.png'),
                ),
                accountName: Text('Aplikasi Mahasiswa'),
                accountEmail: Text('Aplikasi CRUD Mahasiswa')),
            ListTile(
              // leading: const Icon(Icons.access_time_outlined),
              title: const Text('Mahasiswa'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Mahasiswa_get()));
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
//
// class _MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ListTile'),
//       ),
//         drawer : Drawer(
//         child : ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               currentAccountPicture: CircleAvatar(
//               backgroundImage: AssetImage("images/download.png"),
//               ),
//                 accountName: Text('Aplikasi UAS'),
//                 accountEmail: Text('Aplikasi CRUD MataKuliah'),
//             ),
//             ListTile(
//               leading: Icon(Icons.access_time_filled),
//               title : Text('Pertemuan 1'),
//               onTap: (){
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.access_alarm_sharp),
//               title: Text('Pertemuan 1'),
//               onTap: (){
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.access_time_rounded),
//               title: Text('Card View'),
//               onTap: (){
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.accessibility),
//               title: Text('Mahasiwa'),
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context)=>Mahasiswa_get())
//                 );
//                 //Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//         ),
//       body: ListView(
//         children: [
//           buildContainer(),
//           buildContainer(),
//           buildContainer(),
//           buildContainer(),
//           buildCard(),
//         ],
//       )
//     );
//   }
//
//   Card buildCard() {
//     return Card(
//           color: Colors.greenAccent,
//           elevation: 15,
//           child: Column(
//             children: [
//               ListTile(
//                 leading: Icon(Icons.access_alarm),
//                 title: Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
//                 subtitle : Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
//               ),
//               Row(
//                 children: [
//                   TextButton(
//                     child: Text("Buy Ticket"),
//                     onPressed: (){},
//                   )
//                 ],
//               )
//             ],
//           ),
//         );
//   }
//
//   Container buildContainer() {
//     return Container(
//           decoration: BoxDecoration(
//           border: Border.all(
//               width: 8
//           ),
//   ),
//     child: Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
//           padding: EdgeInsets.all(0.0)
//   );
//   }
// }
