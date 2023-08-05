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
        // the application has a blue toolbar. Then, without quitting the app,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeData.dark().canvasColor,
      appBar: AppBar(),
      body: const StackedContainers(),
    );
  }
}

class StackedContainers extends StatelessWidget {
  const StackedContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24.0, left: 24),
      child: Stack(
        children: [
          LastContianer(),
          MiddleContainer(),
          BaseContainer(),
        ],
      ),
    );
  }
}

class BaseContainer extends StatelessWidget {
  const BaseContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: const Color(0xfff3f3f3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Align(
          alignment: Alignment.center,
          child: Text(
            "HEHEHEH",
            style: TextStyle(
                color: Color(0xff3f3f3f),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )),
    );
  }
}

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 3.2,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
            color: const Color(0xffa1a1a1),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, 4),
                blurRadius: 44,
              )
            ]),
      ),
    );
  }
}

class LastContianer extends StatelessWidget {
  const LastContianer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 3.25,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
          color: const Color(0xffa1a1a1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
