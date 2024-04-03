import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      title: 'Material App',
      home: TextF(),
    );
  }
}

class TextF extends StatefulWidget {
  const TextF({
    super.key,
  });

  @override
  State<TextF> createState() => _TextState();
}

class _TextState extends State<TextF> {
  late TextEditingController textEditingController;
  late TextEditingController textEditingController2;
  int sum = 0;

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
    textEditingController2.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    textEditingController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field Bar"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 7,
                    controller: textEditingController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('label'),
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 7,
                    controller: textEditingController2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('label'),
                    ),
                  ),
                )
              ],
            ),
            Text('this result is ==========$sum'),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      int num1 = int.parse(textEditingController.text);
                      int num2 = int.parse(textEditingController2.text);
                      sum = num2 + num1;

                      setState(() {});
                    },
                    child: Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      int num1 = int.parse(textEditingController.text);
                      int num2 = int.parse(textEditingController2.text);
                      sum = num1 - num2;

                      setState(() {});
                    },
                    child: Text('substraction'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      int num1 = int.parse(textEditingController.text);
                      int num2 = int.parse(textEditingController2.text);
                      sum = num2 * num1;

                      setState(() {});
                    },
                    child: Text('mul'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      int num1 = int.parse(textEditingController.text);
                      int num2 = int.parse(textEditingController2.text);
                      sum = num1 ~/ num2;

                      setState(() {});
                    },
                    child: Text('divi'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      int num1 = int.parse(textEditingController.text);
                      int num2 = int.parse(textEditingController2.text);
                      sum = num1 % num2;

                      setState(() {});
                    },
                    child: Text('modulus'),
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
