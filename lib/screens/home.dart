import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(72, 121, 209, 1),
        title: Text("Home"),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/login");
            },
            child: Text("Log out"),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
        leading: new Container(),
      ),
      body: Container(
        width: double.infinity,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
              child: new SizedBox(
                width: 350,
                height: 60.0,
                child: new RaisedButton(
                  textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  color: Color.fromRGBO(72, 121, 209, 1),
                  child: Text(
                    'Issuing Process',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/issuing-stepone');
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
              child: new SizedBox(
                width: 350,
                height: 60.0,
                child: new RaisedButton(
                  textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  color: Color.fromRGBO(72, 121, 209, 1),
                  child: Text(
                    'Receiving Process',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/receiving');
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
              child: new SizedBox(
                width: 350,
                height: 60.0,
                child: new RaisedButton(
                  textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  color: Color.fromRGBO(72, 121, 209, 1),
                  child: Text(
                    'Counting Process',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/counting');
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
              child: new SizedBox(
                width: 350,
                height: 60.0,
                child: new RaisedButton(
                  textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  color: Color.fromRGBO(72, 121, 209, 1),
                  child: Text(
                    'Approval Process',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
