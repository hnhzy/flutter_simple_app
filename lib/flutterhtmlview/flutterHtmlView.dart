import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_text.dart';

//https://github.com/PonnamKarthik/FlutterHtmlView
class FlutterHtmlView extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>FlutterHtmlViewState();

}

class FlutterHtmlViewState extends State<FlutterHtmlView>{
  String html = '''
<h1>This is &nbsp;heading 1</h1>
<h2>This is heading 2</h2>
<h3>This is heading 3</h3>
<h4>This is heading 4</h4>
<h5>This is heading 5</h5>
<h6>This is heading 6</h6>
<p>
    <img alt="Test Image" src="https://i.ytimg.com/vi/RHLknisJ-Sg/maxresdefault.jpg">
</p>
<p>
    <video src="https://flutter.github.io/assets-for-api-docs/videos/bee.mp4"></video>
</p>
<a data-id="1" href="https://google.com">Go Google</a>
<a href="mailto:ponnamkarthik3@gmail.com">Mail to me</a>
''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(
        title: new Text('FlutterHtmlView'),
      ),
      body: new Container(
         child: new HtmlText(data: html,),
      ),
    );
  }
}