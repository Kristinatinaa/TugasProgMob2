import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:startup_namer/mahasiswa/mahasiswa_add.dart';
import 'package:http/http.dart' as http;

class Mahasiswa_get extends StatefulWidget {
  const Mahasiswa_get({Key? key}) : super(key: key);

  @override
  State<Mahasiswa_get> createState() => _Mahasiswa_getState();
}

class _Mahasiswa_getState extends State<Mahasiswa_get> {
  List _get = [];

  @override
  void initState() {
    super.initState();
    _getDataMhs();
  }

  Future _getDataMhs() async {
    try {
      final response = await http.get(
          Uri.parse('https://kpsi.fti.ukdw.ac.id/api/progmob/mhs/72200424'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _get = data;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  Future _delMhs(String id, nimProgmob) async {
    final http.Response response = await http.post(
      Uri.parse('https://kpsi.fti.ukdw.ac.id/api/progmob/mhs/delete'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'id': id,
        'nim_progmob': nimProgmob
      }),
    );
    if (response.statusCode == 200) {
      return _getDataMhs();
    } else {
      throw Exception('Failed to load response');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD Mahasiswa'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Mahasiswa_add()));
        },
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.blue,
        // child: Container(height: 50.0),
      ),
      body: RefreshIndicator(
        onRefresh: _getDataMhs,
        child: ListView.builder(
            itemCount: _get.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.red, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  title: Text(_get[index]['nim'] + " - " + _get[index]['nama']),
                  subtitle: Text(_get[index]['email']),
                  trailing: PopupMenuButton(
                    icon: Icon(Icons.more_vert),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          value: 'edit',
                          child: Text('Edit'),
                        ),
                        PopupMenuItem(
                          value: 'delete',
                          child: Text('Delete'),
                          onTap: () async {
                            _delMhs(_get[index]['id'].toString(), '72200424');
                          },
                        ),
                      ];
                    },
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
