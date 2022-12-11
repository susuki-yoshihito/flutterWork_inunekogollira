import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String imagePath = 'hoge';

  void DrawImage(String _name, String _image)
  {
    print(_name);
    imagePath = _image;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('犬猫ゴリラ'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 600,
              width: 500,
              child:Image.network(imagePath)
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              height:80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        DrawImage('犬', 'https://pngimg.com/uploads/dog/dog_PNG172.png');
                      },
                      child: const Text('犬'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        DrawImage('猫', 'https://pngimg.com/uploads/cat/cat_PNG50514.png');
                      },
                      child: const Text('猫'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        DrawImage('ゴリラ', 'http://pngimg.com/uploads/gorilla/gorilla_PNG18715.png');
                      },
                      child: const Text('ゴリラ'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
     );
  }
}
