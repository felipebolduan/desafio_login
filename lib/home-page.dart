import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('lib/assets/leon-avatar.jpg'),
        ), 
      ), 
    ); 

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bem vindo Leon S. Kennedy',
        style: TextStyle(fontSize: 30.0, color: Colors.blueGrey),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Leon S. Kennedy. Informações Classificadas.',
        style: TextStyle(fontSize: 18.0, color: Colors.amber),
      ),      
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        title: Text('Banco de Dados RE'),
      ),
      body: body,
    );

  }
}