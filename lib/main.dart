import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {


  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App bar'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.people_alt_outlined),
          onPressed: (){
            String name = 'NUEVO';
            String lastName = 'diaz';
            String count = '2022222';

              Navigator.pop(context,
                 new Persona(name: name, lastNama: lastName, cuenta: count));

          },
        ),
        body: ListView.builder(
          itemCount: _personas.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title:
              Text(_personas[index].name + ' ' + _personas[index].lastName),
              subtitle: Text(_personas[index].cuenta),
              leading: CircleAvatar(
                child: Text(_personas[index].name.substring(0, 1)),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          },
        ),
      ),
    );
  }
  }


  class Persona{
    String name;
    String lastName;
    String cuenta;

    Persona(this.name, this.lastName, this.cuenta);
  }
  List<Persona> _personas = [
    Persona('severooo', 'iglesias', '20112848'),
    Persona('juanito', 'perez', '20132338'),
    Persona('panchito', 'anastacio', '20152544'),
    Persona('pelos', 'atorado', '20133838'),

  ];