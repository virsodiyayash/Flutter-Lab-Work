import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';


void main(){
  runApp(MaterialApp(home: DatabaseDemo(),));
}


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

  Future<void> _deleteDatabase(int id) async{
    await _database.delete('todo' ,
    where: 'id = ?',
      whereArgs: [id]
    );
    _fetchData();
  }

  Future<void> _updateDatabase(int id , String newTitle , String newDesc) async{
    await _database.update("todo",
        {
          'title' : newTitle,
          'desc' : newDesc
        },
        where: 'id = ?',
        whereArgs: [id]
    );
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
              title: Text(data[index]['title']),
              subtitle : Text(data[index]['desc'] ),

              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){

                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: Text("Are you sure you want to delete"),
                          actions: [
                            ElevatedButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text("Cancel")),

                            ElevatedButton(onPressed: (){
                              _deleteDatabase(data[index]['id']);
                              Navigator.pop(context);
                            }, child: Text("delete"))
                          ],
                        );

                    });
                  },
                      icon: Icon(Icons.delete)),

                  IconButton(onPressed: (){
                    setState(() {
                      titleController.text = data[index]['title'];
                      descController.text = data[index]['desc'];
                     showDialog(context: context, builder: (context) {
                       return AlertDialog(
                         title: Text("Edit Data"),
                         content: Column(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             TextField(
                               controller: titleController,
                               decoration: InputDecoration(
                                 labelText: 'Enter title',
                               ),
                             ),
                             TextField(
                               controller: descController,
                               decoration: InputDecoration(
                                 labelText: 'Enter Desc',
                               ),
                             ),

                           ],
                         ),

                         actions: [
                           ElevatedButton(onPressed: (){
                             _updateDatabase(data[index]['id'], titleController.text, descController.text);
                             Navigator.pop(context);
                       }, child: Text("Save")),
                           
                           ElevatedButton(onPressed: (){
                             Navigator.pop(context);
                           }, child: Text("Cancel"))
                         ],
                       );
                     });
                    });
                  }, icon: Icon(Icons.edit_outlined))
                ],
              ),
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
                    child: Text('add')),


              ],
            );
          });
        }),
    );
  }
}
