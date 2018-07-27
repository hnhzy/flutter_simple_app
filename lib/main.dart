import 'package:flutter/material.dart';
import 'index/contactlist/model/contact.dart';
import 'package:flutter_simple_app/route/second_page.dart';
import 'dropdown/dropdown.dart';
import 'helloworld/hello_world.dart';
import 'gridview/gridview.dart';
import 'imagenet/image_from_network.dart';
import 'list/inflate_list.dart';
import 'imagelocal/image_local.dart';
import 'localjson/local_json.dart';
import 'navigation/navigation_drawer.dart';
import 'material/material.dart';
import 'stateful/stateful_widget.dart';
import 'stateless/stateless_widget.dart';
import 'tip/tip.dart';
import 'dialog/dialog.dart';
import 'tabs/tabs.dart';
import 'customfonts/custom_fonts.dart';
import 'edittext/edittext.dart';
import 'gradient/gradient.dart';
import 'httpget/http_get.dart';
import 'listview/list_view.dart';
import 'snackbar/snackbar.dart';
import 'stepper/stepper.dart';
import 'tabs2/tabs2.dart';
import 'theme/theme.dart';
import 'containerwidget/container_widget.dart';
import 'package:flutter_simple_app/Text/TextDemo.dart';
import 'imagenet/networkimage.dart';
import 'listview/listview2.dart';
import 'rowandcolumn/RowAndColumn.dart';
import 'stack/stackwidget.dart';
import 'wrapwidget/WrapWidget.dart';
import 'transformwidget/TransformWidget.dart';
import 'singlechildscrollView/SingleChildScrollView.dart';

String clickText;

void main(){
  runApp(
      new MaterialApp(
        home: new MyApp(),
        routes: <String,WidgetBuilder>{'/second_page':(BuildContext context){return new SecondPage(title: clickText,); }//先声明要跳转的新页面,title是要传递的参数,'/second_page'是给这个页面取个名字，后面会用到
  },));
}

//void main() {
//  runApp(new MyApp());
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(title: new Text("Flutter example")),
        body: new SampleAppPage(),
      ),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() {
    return new _SampleAppPageState();
  }
}

class _SampleAppPageState extends State<SampleAppPage> {
  List<ContactModel> items = <ContactModel>[];

  @override
  void initState() {
    super.initState();
    items.add(new ContactModel(fullName: 'Hello World', email: '362070860@qq.com',position:'0'));
    items.add(new ContactModel(fullName: 'Spinner', email: '362070860@qq.com',position:'1'));
    items.add(new ContactModel(fullName: 'GridView Example', email: '362070860@qq.com',position:'2'));
    items.add(new ContactModel(fullName: 'Routes', email: '362070860@qq.com',position:'3'));
    items.add(new ContactModel(fullName: 'Image from Network', email: '362070860@qq.com',position:'4'));
    items.add(new ContactModel(fullName: 'Infinite List', email: '362070860@qq.com',position:'5'));
    items.add(new ContactModel(fullName: 'Load local image', email: '362070860@qq.com',position:'6'));
    items.add(new ContactModel(fullName: 'Load local JSON file', email: '362070860@qq.com',position:'7'));
    items.add(new ContactModel(fullName: 'Navigation', email: '362070860@qq.com',position:'8'));
    items.add(new ContactModel(fullName: 'Simple Material App', email: '362070860@qq.com',position:'9'));
    items.add(new ContactModel(fullName: 'Stateful Widget', email: '362070860@qq.com',position:'10'));
    items.add(new ContactModel(fullName: 'Stateless Widget', email: '362070860@qq.com',position:'11'));
    items.add(new ContactModel(fullName: 'Tip Calculator', email: '362070860@qq.com',position:'12'));
    items.add(new ContactModel(fullName: 'Alert Dialog', email: '362070860@qq.com',position:'13'));
    items.add(new ContactModel(fullName: 'Tabs', email: '362070860@qq.com',position:'14'));
    items.add(new ContactModel(fullName: 'Custom Fonts', email: '362070860@qq.com',position:'15'));
    items.add(new ContactModel(fullName: 'EditText', email: '362070860@qq.com',position:'16'));
    items.add(new ContactModel(fullName: 'Gradient', email: '362070860@qq.com',position:'17'));
    items.add(new ContactModel(fullName: 'Http Get', email: '362070860@qq.com',position:'18'));
    items.add(new ContactModel(fullName: 'Listview', email: '362070860@qq.com',position:'19'));
    items.add(new ContactModel(fullName: 'SnackBar', email: '362070860@qq.com',position:'20'));
    items.add(new ContactModel(fullName: 'Stepper', email: '362070860@qq.com',position:'21'));
    items.add(new ContactModel(fullName: 'Tabs', email: '362070860@qq.com',position:'22'));
    items.add(new ContactModel(fullName: 'Theme', email: '362070860@qq.com',position:'23'));
    items.add(new ContactModel(fullName: 'Container', email: '362070860@qq.com',position:'24'));
    items.add(new ContactModel(fullName: 'TextDemo ', email: '362070860@qq.com',position:'25'));
    items.add(new ContactModel(fullName: 'NetWorkImage ', email: '362070860@qq.com',position:'26'));
    items.add(new ContactModel(fullName: 'ListView2 ', email: '362070860@qq.com',position:'27'));
    items.add(new ContactModel(fullName: 'RowAndColunm ', email: '362070860@qq.com',position:'28'));
    items.add(new ContactModel(fullName: 'StackWidget ', email: '362070860@qq.com',position:'29'));
    items.add(new ContactModel(fullName: 'WrapWidget ', email: '362070860@qq.com',position:'30'));
    items.add(new ContactModel(fullName: 'TransformWidget ', email: '362070860@qq.com',position:'31'));
    items.add(new ContactModel(fullName: 'SingleChildScrollViews ', email: '362070860@qq.com',position:'32'));
  }

  @override
  Widget build(BuildContext context) {

    Iterable<Widget> listTitles = items.map((ContactModel item) {
      //将items的内容设置给Adapter
      return buildListTile(context, item);
    });
    listTitles = ListTile.divideTiles(context: context, tiles: listTitles); //给Listview设置分隔线
    return new Scaffold(
//      appBar: new AppBar(title: new Text('ListViewDemo'),),
      body: new Scrollbar(
          child: new ListView(children: listTitles.toList(), //添加ListView控件
      )),
    );
  }

//buildListTile相当于ListView的Adapter
  Widget buildListTile(BuildContext context, ContactModel item) {
    return new GestureDetector(
      child:new ListTile(
      isThreeLine: true,
      //子item的是否为三行
      dense: false,
      leading: new CircleAvatar(child: new Text(item.fullName[0]),),//左侧首字母图标显示，不显示则传null
      title: new Text(item.fullName),//子item的标题
      subtitle: new Text(item.email),//子item的内容
      trailing: new Icon(Icons.arrow_right,color: Colors.green,), //显示右侧的箭头，不显示则传null
      ),
      onTap: () {
        print(item.position);
        clickText=item.fullName;//获取点击的内容
        switch(item.position){
          case '0':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new HelloWorld()));
            break;
          case '1':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new DropDown()));
            break;
          case '2':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new GridViewDemo()));
            break;
          case '3':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new SecondPage(title: clickText)));
            break;
          case '4':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new ImageNetwork()));
            break;
          case '5':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new MyList()));
            break;
          case '6':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new ImageLoacal()));
            break;
          case '7':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new LocalJson()));
            break;
          case '8':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new Navigation()));
            break;
          case '9':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new Material_App()));
            break;
          case '10':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new StateButton()));
            break;
          case '11':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new Stateless_Widget()));
            break;
          case '12':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new TipCalculator()));
            break;
          case '13':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new MyDialog()));
            break;
          case '14':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new MyTabs()));
            break;
          case '15':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new CustomFonts()));
            break;
          case '16':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new MyEditText()));
            break;
          case '17':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new MyGradient()));
            break;
          case '18':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new MyGetHttpData()));
            break;
          case '19':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new MylistView()));
            break;
          case '20':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new MySnackBar()));
            break;
          case '21':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new MyStepper()));
            break;
          case '22':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new MyTabs2()));
            break;
          case '23':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new MyTheme()));
            break;
            case '24':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new ContainerWidget()));
            break;
          case '25':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new TextDemo()));
            break;
            case '26':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new NetWorkImage()));
            break;
            case '27':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new ListView2()));
            break;
            case '28':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new RowAndColunm()));
            break;
            case '29':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new StackWidget()));
            break;
            case '30':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new WrapWidget()));
            break;
            case '31':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new TransformWidget()));
            break;
            case '32':
            Navigator.push(context,new MaterialPageRoute(builder: (context) => new SingleChildScrollViews()));
            break;
        }
      },
    );
  }
}


