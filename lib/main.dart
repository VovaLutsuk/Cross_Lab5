import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const _pixelSize = 25.0;
const _bgColor = Colors.blue;
const _borderColor = Colors.black;
const _borderWidth = 2.0;
const _borderRadius = 12.5;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Луцук Володимир - Кн-31'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: _buildFive(),
      ),
    );
  }

  List<Widget> _buildFive() {
    return [
      firstLine(),
      secondLine(),
      thirdLine(),
      fourthLine(),
      fifthLine(),
      sixthLine(),
    ];
  }

  Widget firstLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(_bgColor),
        _buildDot(_bgColor),
        _buildDot(_bgColor),
        _buildDot(_bgColor),
      ],
    );
  }

  Widget secondLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(_bgColor),
        _buildEmpty(),
        _buildEmpty(),
        _buildEmpty(),
      ],
    );
  }





  Widget thirdLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(_bgColor),
        _buildDot(_bgColor),
        _buildDot(_bgColor),
        _buildEmpty(),
      ],
    );
  }

  Widget fourthLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildEmpty(),
        _buildEmpty(),
        _buildEmpty(),
        _buildDot(_bgColor),
      ],
    );
  }
  Widget  fifthLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildEmpty(),
        _buildEmpty(),
        _buildEmpty(),
        _buildDot(_bgColor),
      ],
    );
  }

  Widget sixthLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(_bgColor),
        _buildDot(_bgColor),
        _buildDot(_bgColor),
        _buildEmpty(),
      ],
    );
  }

  Widget _buildDot(Color color) {
    return Container(
      width: _pixelSize,
      height: _pixelSize,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(_borderRadius),
        border: Border.all(color: _borderColor, width: _borderWidth),
      ),
    );
  }

  Widget _buildEmpty() {
    return SizedBox(
      width: _pixelSize,
      height: _pixelSize,
    );
  }
}
