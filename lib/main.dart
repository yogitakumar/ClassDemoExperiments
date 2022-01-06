import 'package:flutter/material.dart';
import 'package:flutterdemoclass/dash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestPage(),
    );
  }
}

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String setvalue = '10';
    return Scaffold(
      body: Center(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: textController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Please enter a number",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black, width: 4, style: BorderStyle.solid),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    setvalue = textController.text;
                    print(setvalue);

                    //Here i am passing value, but not working
//                        Dashboard(
//                           getvalue: setvalue,
//                        );
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => Dashboard(
                                  getvalue: setvalue,
                                )));
                  });
                },
                child: Text("set")),
          ],
        ),
      )),
    );
  }
}
