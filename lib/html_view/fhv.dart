import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';

class Fhv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _html = '''
<h1>This is &nbsp;heading 1</h1>
<h2>This is heading 2</h2>
<h3>This is heading 3</h3>
<h4>This is heading 4</h4>
<h5>This is heading 5</h5>
<h6>This is heading 6</h6>
<p>
    <img alt="Test Image" src="https://i.ytimg.com/vi/RHLknisJ-Sg/maxresdefault.jpg" />
    <video src="https://flutter.github.io/assets-for-api-docs/videos/bee.mp4"></video>
    <a href="https://google.com">Go Google</a>
    <a href="mailto:address@email.domain">Mail to me</a>
</p>
''';

    // _html = "<a data-link='1' href='https://www.google.com'></a>";

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Html View'),
      ),
      body: new SingleChildScrollView(
        child: new Center(
          child: new HtmlView(data: _html),
        ),
      ),
    );
  }
}
