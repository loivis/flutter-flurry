import 'package:flutter/material.dart';
import 'package:flurry/html_view/fhv.dart';

void main() => runApp(
      new MaterialApp(
        title: "Flutter Let's See",
        home: new Home(),
        theme: new ThemeData(primaryColor: Colors.grey),
        routes: {
          'home': (context) => Home(),
          'html_view': (context) => Fhv(),
          'row': (context) {},
          'column': (context) {},
        },
      ),
    );

class Home extends StatelessWidget {
  final _items = <String>['html_view', 'row', 'column'];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Oreo McFlurry'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return new ListView.builder(
      itemCount: _items.length * 2,
      itemBuilder: (context, index) {
        if (index.isEven) {
          return new Divider();
        }
        String item = _items[index ~/ 2];
        return new ListTile(
          title: new Text(item),
          onTap: () {
            Navigator.pushNamed(context, item);
          },
        );
      },
    );
  }
}
