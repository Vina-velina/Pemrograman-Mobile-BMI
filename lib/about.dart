import 'package:bmi_project/select_figure.dart';
import 'package:flutter/material.dart';

class Developer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DEVELOPER PROFILE'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.redAccent, size: 30),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SelectFigure()),
              );
            },
          ),
        backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Picture(),
              TextName(),
              TextNim(),
              RowCardOne(),
              RowCardTwo(),
            ],
          ),
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 95,
        backgroundColor: Colors.teal,
        child: CircleAvatar(
          radius: 90,
          backgroundImage: AssetImage('assets/vina.jpeg'),
        ),
      ),
      margin: const EdgeInsets.only(top: 40.0),
    );
  }
}

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Vina Velina',
        style: TextStyle(
          color: Colors.teal,
          fontSize: 23,
        ),
      ),
      margin: const EdgeInsets.only(top: 20.0),
    );
  }
}

class TextNim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '1915051080',
        style: TextStyle(
          color: Colors.teal[300],
          fontSize: 20,
        ),
      ),
    );
  }
}

class RowCardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.teal[50],
                blurRadius: 8.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.school,
                    size: 50,
                    color: Colors.teal,
                  ),
                  Text(
                    'Undiksha',
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.teal[50],
                blurRadius: 8.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 50,
                    color: Colors.teal,
                  ),
                  Text(
                    'Singaraja',
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RowCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.teal[50],
                blurRadius: 8.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    size: 50,
                    color: Colors.teal,
                  ),
                  Text(
                    'Olahraga',
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.teal[50],
                blurRadius: 8.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.music_video,
                    size: 50,
                    color: Colors.teal,
                  ),
                  Text(
                    'Pop',
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
