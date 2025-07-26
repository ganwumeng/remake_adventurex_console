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
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.white12,
        title: Row(
          children: [
            Text(
              "Remake",
              style: TextStyle(fontFamily: "Pixel", color: Colors.orange),
            ),
            Text(
              " Adventure Console",
              style: TextStyle(fontFamily: "Pixel", color: Colors.white),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                  maxLines: 6,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: '参数一',
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: (String value) async {})
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        tooltip: '开始生成',
        child: const Icon(Icons.generating_tokens),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
