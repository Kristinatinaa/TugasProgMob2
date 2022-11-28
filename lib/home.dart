import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
      ),
        drawer : Drawer(
        child : ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/download.png"),
              ),
                accountName: Text('Aplikasi UAS'),
                accountEmail: Text('Aplikasi CRUD MataKuliah'),
            ),
            ListTile(
              leading: Icon(Icons.access_time_filled),
              title : Text('Pertemuan 1'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.access_alarm_sharp),
              title: Text('Pertemuan 2'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.access_time_rounded),
              title: Text('Card View'),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
        ),
      body: ListView(
        children: [
          buildContainer(),
          buildContainer(),
          buildContainer(),
          buildContainer(),
          buildCard(),
        ],
      )
    );
  }

  Card buildCard() {
    return Card(
          color: Colors.greenAccent,
          elevation: 15,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
                subtitle : Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
              ),
              Row(
                children: [
                  TextButton(
                    child: Text("Buy Ticket"),
                    onPressed: (){},
                  )
                ],
              )
            ],
          ),
        );
  }

  Container buildContainer() {
    return Container(
          decoration: BoxDecoration(
          border: Border.all(
              width: 8
          ),
  ),
    child: Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
          padding: EdgeInsets.all(0.0)
  );
  }
}
