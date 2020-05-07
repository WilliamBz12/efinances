import 'package:efinances/app/shared/repositories/statements_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () async {
              final list = await StatementsRepository().getListStatements();
              print(list);
            },
            child: Text("click"),
          )
        ],
      ),
    );
  }
}
