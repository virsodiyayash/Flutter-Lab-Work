import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';


class DatabaseDemo extends StatefulWidget {
  DatabaseDemo({super.key});

  @override
  State<DatabaseDemo> createState() => _DatabaseDemoState();
}

class _DatabaseDemoState extends State<DatabaseDemo> {

  late Database _database;
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  List<Map<String , dynamic>> data = [];

  Future<void> _initDatabase() async{
    _database = await openDatabase(
      join(await getDatabasesPath(), "mydatabase.db"),
      onCreate: (db , version){
        return db.execute(
          'CREATE TABLE todo(id INTEGER PRIMARY KEY AUTOINCREMENT , title TEXT , desc TEXT)'
        );
      },
      version: 1
    );
  }

  Future<void> _fetchData() async{
    List<Map<String , dynamic>> details = await _database.query('todo');
    setState(() {
      data = details;
    });
  }

  Future<void> _addDatabase(String title , String desc) async{
    await _database.insert('todo', {'title' : title , 'desc' : desc});
    _fetchData();
  }

  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Database Demo"),
          backgroundColor: Colors.blue,
        ),



      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context , index) {
            return ListTile(
              title: data[index]['title'],
              subtitle : data[index]['desc'],
            );
          }),

        floatingActionButton: FloatingActionButton(onPressed: (){
          showModalBottomSheet(context: context, builder: (context){
            return Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: 'title',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
                TextField(
                  controller: descController,
                  decoration: InputDecoration(
                      labelText: 'desc',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                ),
                ElevatedButton(onPressed: (){
                  _addDatabase(titleController.text, descController.text);
                  titleController.clear();
                  descController.clear();
                  Navigator.pop(context);
                },
                    child: Text('add'))
              ],
            );
          });
        }),
    );
  }
}
