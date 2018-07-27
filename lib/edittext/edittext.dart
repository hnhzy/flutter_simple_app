import 'package:flutter/material.dart';

class MyEditText extends StatefulWidget {
  @override
  MyEditTextState createState() => new MyEditTextState();
}

class MyEditTextState extends State<MyEditText> {
  String results = "";

// Whenever the user modifies a text field with an associated TextEditingController,
// the text field updates value and the controller notifies its listeners.
// Listeners can then read the text and selection properties to learn what the user has typed or how the selection has been updated.
//  每当用户用相关的文本编辑控制器修改文本字段时，文本字段更新值，控制器通知其侦听器。侦听器然后可以读取文本和选择属性，以了解用户键入了什么或选择如何被更新。
  final TextEditingController controller =
      new TextEditingController(); //A controller for an editable text field.可编辑文本字段的控制器。

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Using EditText"),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextField(
                //TextField
                decoration: new InputDecoration(hintText: "Enter text here..."),
                //InputDecoration
                onSubmitted: (String str) {
                  setState(() {
                    results = results + "\n" + str;
                    controller.text = "";
                  });
                },
                controller: controller,
              ),
              new Text(results)
            ],
          ),
        ),
      ),
    );
  }
}
