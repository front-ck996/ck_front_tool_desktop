import 'package:ck_front_tool_dart/app_init.dart';
import 'package:ck_front_tool_dart/utils/location_file_host.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

void main() {
  Hive.init("db/db.hive");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [FlutterSmartDialog.observer],
      builder: AppInit.builder(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  void _incrementCounter() async {
    final SharedPreferences prefs = await _prefs;
    var db1 = await Hive.openBox("db1");
    db1.add("a");
    await db1.put("a", "aaa");
    debugPrint(await db1.get("a"));
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FloatingActionButton(onPressed: () async {
              var fData = await LocationFileHost.getHostData();
              print(fData);
            },child: Text('获取hosts文件'),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
