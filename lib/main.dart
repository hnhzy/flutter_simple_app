import 'package:flutter/material.dart';
import 'index/contactlist/model/contact.dart';
import 'package:flutter_simple_app/route/second_page.dart';
import 'dropdown/dropdown.dart';
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
import 'listview/listview2.dart';
import 'rowandcolumn/RowAndColumn.dart';
import 'stack/stackwidget.dart';
import 'wrapwidget/WrapWidget.dart';
import 'transformwidget/TransformWidget.dart';
import 'singlechildscrollView/SingleChildScrollView.dart';
import 'ktoast/ktoast.dart';
import 'flutterhtmlview/flutterHtmlView.dart';
import 'flutter_search_bar/flutterSearchBar.dart';
import 'barcode_scan/BarCodeScan.dart';
import 'map_view_test/MapViewTest.dart';
import 'shared_pre/SharedPreferences.dart';
import 'package:flutter_simple_app/path_provider/path_provider_lib.dart';
import 'url_launcher_lib/url_launcher_lib.dart';
import 'image_picker_lib/image_picker_lib.dart';
import 'sqflite_lib/sqflite_lib.dart';
import 'video_player_lib/video_player_lib.dart';
import 'wifi_state_lib/wifi_state_lib.dart';
import 'device_info_lib/device_info_lib.dart';
import 'flutter_webview_plugin_lib/flutter_webview_plugin111.dart';
import 'share_lib/share_lib.dart';
import 'animated_list/animated_list.dart';
import 'app_bar_bottom/app_bar_bottom.dart';
import 'basic_app_bar/basic_app_bar.dart';
import 'custom_a11y_traversal/custom_a11y_traversal.dart';
import 'expansion_tile_sample/expansion_tile_sample.dart';
import 'tabbed_app_bar/tabbed_app_bar.dart';
import 'staggeredgridview/flutter_staggered_grid_view.dart';
import 'bv_widget/bv_widget.dart';
import 'flutterwalkthrough/flutterwalkthrough.dart';
import 'route/events.dart';
import 'image_pick_crop/image_pick_crop.dart';
import 'multiple_image_picker/multiple_image_picker.dart';
import 'multiple_image_picker2/multiple_image_picker2.dart';
import 'photo_view_demo/photo_view_demo.dart';
import 'flutter_slidable_demo/flutter_slidable_demo.dart';
import 'pulltorefresh_demo/pulltorefresh_demo.dart';
import 'date_picker_demo/date_picker_demo.dart';
import 'flutter_downloader_demo/flutter_downloader_demo.dart';

void main() {
  //4. Fire Events
  eventBus.fire(new MyEventA("MyEventA"));
  eventBus.fire(new MyEventB("MyEventB"));
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

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
    items.add(new ContactModel(fullName: 'staggered_grid', email: '362070860@qq.com', position: '0'));
    items.add(new ContactModel(fullName: 'Spinner', email: '362070860@qq.com', position: '1'));
    items.add(new ContactModel(fullName: 'GridView', email: '362070860@qq.com', position: '2'));
    items.add(new ContactModel(fullName: 'Routes', email: '362070860@qq.com', position: '3'));
    items.add(new ContactModel(fullName: 'Image-Network', email: '362070860@qq.com', position: '4'));
    items.add(new ContactModel(fullName: 'Infinite List', email: '362070860@qq.com', position: '5'));
    items.add(new ContactModel(fullName: 'local-image', email: '362070860@qq.com', position: '6'));
    items.add(new ContactModel(fullName: 'local-JSON', email: '362070860@qq.com', position: '7'));
    items.add(new ContactModel(fullName: 'Navigation', email: '362070860@qq.com', position: '8'));
    items.add(new ContactModel(fullName: 'Simple Material App', email: '362070860@qq.com', position: '9'));
    items.add(new ContactModel(fullName: 'Stateful Widget', email: '362070860@qq.com', position: '10'));
    items.add(new ContactModel(fullName: 'Stateless Widget', email: '362070860@qq.com', position: '11'));
    items.add(new ContactModel(fullName: 'Tip Calculator', email: '362070860@qq.com', position: '12'));
    items.add(new ContactModel(fullName: 'Alert Dialog', email: '362070860@qq.com', position: '13'));
    items.add(new ContactModel(fullName: 'Tabs', email: '362070860@qq.com', position: '14'));
    items.add(new ContactModel(fullName: 'Custom Fonts', email: '362070860@qq.com', position: '15'));
    items.add(new ContactModel(fullName: 'EditText', email: '362070860@qq.com', position: '16'));
    items.add(new ContactModel(fullName: 'Gradient', email: '362070860@qq.com', position: '17'));
    items.add(new ContactModel(fullName: 'Http Get', email: '362070860@qq.com', position: '18'));
    items.add(new ContactModel(fullName: 'Listview', email: '362070860@qq.com', position: '19'));
    items.add(new ContactModel(fullName: 'SnackBar', email: '362070860@qq.com', position: '20'));
    items.add(new ContactModel(fullName: 'Stepper', email: '362070860@qq.com', position: '21'));
    items.add(new ContactModel(fullName: 'Tabs', email: '362070860@qq.com', position: '22'));
    items.add(new ContactModel(fullName: 'Theme', email: '362070860@qq.com', position: '23'));
    items.add(new ContactModel(fullName: 'Container', email: '362070860@qq.com', position: '24'));
    items.add(new ContactModel(fullName: 'TextDemo ', email: '362070860@qq.com', position: '25'));
    items.add(new ContactModel(fullName: 'NetWorkImage ', email: '362070860@qq.com', position: '26'));
    items.add(new ContactModel(fullName: 'ListView2 ', email: '362070860@qq.com', position: '27'));
    items.add(new ContactModel(fullName: 'RowAndColunm ', email: '362070860@qq.com', position: '28'));
    items.add(new ContactModel(fullName: 'StackWidget ', email: '362070860@qq.com', position: '29'));
    items.add(new ContactModel(fullName: 'WrapWidget ', email: '362070860@qq.com', position: '30'));
    items.add(new ContactModel(fullName: 'TransformWidget ', email: '362070860@qq.com', position: '31'));
    items.add(new ContactModel(fullName: 'SingleChildScrollViews ', email: '362070860@qq.com', position: '32'));
    items.add(new ContactModel(fullName: 'Ktoast ', email: '362070860@qq.com', position: '33'));
    items.add(new ContactModel(fullName: 'BannerViewTest ', email: '362070860@qq.com', position: '34'));
    items.add(new ContactModel(fullName: 'FlutterHtmlView ', email: '362070860@qq.com', position: '35'));
    items.add(new ContactModel(fullName: 'SearchBarDemoApp ', email: '362070860@qq.com', position: '36'));
    items.add(new ContactModel(fullName: 'BarCodeScan ', email: '362070860@qq.com', position: '37'));
    items.add(new ContactModel(fullName: 'MapViewTest ', email: '362070860@qq.com', position: '38'));
    items.add(new ContactModel(fullName: 'SharedPre ', email: '362070860@qq.com', position: '39'));
    items.add(new ContactModel(fullName: 'PathPoviderLib ', email: '362070860@qq.com', position: '40'));
    items.add(new ContactModel(fullName: 'UrlLauncherLib ', email: '362070860@qq.com', position: '41'));
    items.add(new ContactModel(fullName: 'ImagePickerLib ', email: '362070860@qq.com', position: '42'));
    items.add(new ContactModel(fullName: 'SqfLiteLib ', email: '362070860@qq.com', position: '43'));
    items.add(new ContactModel(fullName: 'VideoApp ', email: '362070860@qq.com', position: '44'));
    items.add(new ContactModel(fullName: 'WifiStateLib ', email: '362070860@qq.com', position: '45'));
    items.add(new ContactModel(fullName: 'DeviceInfoLib ', email: '362070860@qq.com', position: '46'));
    items.add(new ContactModel(fullName: 'FlutterWebViewPlugin ', email: '362070860@qq.com', position: '47'));
    items.add(new ContactModel(fullName: 'ShareLib ', email: '362070860@qq.com', position: '48'));
    items.add(new ContactModel(fullName: 'AnimatedListSample ', email: '362070860@qq.com', position: '49'));
    items.add(new ContactModel(fullName: 'AppBarBottomSample ', email: '362070860@qq.com', position: '50'));
    items.add(new ContactModel(fullName: 'BasicAppBarSample ', email: '362070860@qq.com', position: '51'));
    items.add(new ContactModel(fullName: 'CustomTraversalExample ', email: '362070860@qq.com', position: '52'));
    items.add(new ContactModel(fullName: 'ExpansionTileSample ', email: '362070860@qq.com', position: '53'));
    items.add(new ContactModel(fullName: 'TabbedAppBarSample ', email: '362070860@qq.com', position: '54'));
    items.add(new ContactModel(fullName: 'flutter_walkthrough ', email: '362070860@qq.com', position: '55'));
    items.add(new ContactModel(fullName: 'ImagePickCrop  ', email: '362070860@qq.com', position: '56'));
    items.add(new ContactModel(fullName: 'MultipleImagePicker  ', email: '362070860@qq.com', position: '57'));
    items.add(new ContactModel(fullName: 'MultiImagePick2  ', email: '362070860@qq.com', position: '58'));
    items.add(new ContactModel(fullName: 'MyPhotoView  ', email: '362070860@qq.com', position: '59'));
    items.add(new ContactModel(fullName: 'SlidableDemo  ', email: '362070860@qq.com', position: '60'));
    items.add(new ContactModel(fullName: 'PulltorefreshDemo  ', email: '362070860@qq.com', position: '61'));
    items.add(new ContactModel(fullName: 'DatePickerDemo  ', email: '362070860@qq.com', position: '62'));
    items.add(new ContactModel(fullName: 'DownLoadDemo  ', email: '362070860@qq.com', position: '63'));
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
          child: new ListView(
        children: listTitles.toList(), //添加ListView控件
      )),
    );
  }

//buildListTile相当于ListView的Adapter
  Widget buildListTile(BuildContext context, ContactModel item) {
    return new GestureDetector(
      child: new ListTile(
        isThreeLine: false,
        //子item的是否为三行
        dense: false,
        contentPadding: EdgeInsets.all(10.0),
        leading: new CircleAvatar(
          child: new Text(item.fullName[0]),
        ),
        //左侧首字母图标显示，不显示则传null
        title: new Text(item.fullName),
        //子item的标题
        subtitle: new Text(item.email),
        //子item的内容
        trailing: new Icon(
          Icons.arrow_right,
          color: Colors.green,
        ), //显示右侧的箭头，不显示则传null
      ),
      onTap: () {
        print(item.position);
        switch (item.position) {
          case '0':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Example08()));
            break;
          case '1':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new DropDown()));
            break;
          case '2':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new GridViewDemo()));
            break;
          case '3':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new SecondPage(title: item.fullName)));
            break;
          case '4':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new ImageNetwork()));
            break;
          case '5':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyList()));
            break;
          case '6':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new ImageLoacal()));
            break;
          case '7':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new LocalJson()));
            break;
          case '8':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Navigation()));
            break;
          case '9':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Material_App()));
            break;
          case '10':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new StateButton()));
            break;
          case '11':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Stateless_Widget()));
            break;
          case '12':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new TipCalculator()));
            break;
          case '13':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyDialog()));
            break;
          case '14':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyTabs()));
            break;
          case '15':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new CustomFonts()));
            break;
          case '16':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyEditText()));
            break;
          case '17':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyGradient()));
            break;
          case '18':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyGetHttpData()));
            break;
          case '19':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MylistView()));
            break;
          case '20':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MySnackBar()));
            break;
          case '21':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyStepper()));
            break;
          case '22':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyTabs2()));
            break;
          case '23':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyTheme()));
            break;
          case '24':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new ContainerWidget()));
            break;
          case '25':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new TextDemo()));
            break;
          case '26':
//            Navigator.push(context,new MaterialPageRoute(builder: (context) => new NetWorkImage()));
            break;
          case '27':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new ListView2()));
            break;
          case '28':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new RowAndColunm()));
            break;
          case '29':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new StackWidget()));
            break;
          case '30':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new WrapWidget()));
            break;
          case '31':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new TransformWidget()));
            break;
          case '32':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new SingleChildScrollViews()));
            break;
          case '33':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Ktoast()));
            break;
          case '34':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new BVTest()));
            break;
          case '35':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new FlutterHtmlView()));
            break;
          case '36':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new SearchBarDemoApp()));
            break;
          case '37':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new BarCodeScan()));
            break;
          case '38':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MapViewTest()));
            break;
          case '39':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new SharedPre()));
            break;
          case '40':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new PathPoviderLib()));
            break;
          case '41':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new UrlLauncherLib()));
            break;
          case '42':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new ImagePickerLib()));
            break;
          case '43':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new SqfLiteLib()));
            break;
          case '44':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new VideoApp()));
            break;
          case '45':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new WifiStateLib()));
            break;
          case '46':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new DeviceInfoLib()));
            break;
          case '47':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new FlutterWebViewPlugin()));
            break;
          case '48':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new ShareLib()));
            break;
          case '49':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new AnimatedListSample()));
            break;
          case '50':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new AppBarBottomSample()));
            break;
          case '51':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new BasicAppBarSample()));
            break;
          case '52':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new CustomTraversalExample()));
            break;
          case '53':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new ExpansionTileSample()));
            break;
          case '54':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new TabbedAppBarSample()));
            break;
          case '55':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new TestScreen()));
            break;
          case '56':
//            Navigator.push(context, new MaterialPageRoute(builder: (context) => new ImagePickCrop()));
            break;
          case '57':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MultiImagePick()));
            break;
          case '58':
//            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MultiImagePick2()));
            break;
          case '59':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyPhotoView()));
            break;
          case '60':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new SlidableDemo()));
            break;
          case '61':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new PulltorefreshDemo()));
            break;
          case '62':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new DatePickerDemo()));
            break;
          case '63':
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new DownLoadDemo()));
            break;
        }
      },
    );
  }
}
