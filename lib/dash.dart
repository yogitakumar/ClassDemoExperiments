import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  String? getvalue;

  Dashboard({Key? key, this.getvalue}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    //getting null as result

    print("DASHBOARD CLASS");

    print(widget.getvalue);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.getvalue.toString()),
      ),
    );
  }
}
