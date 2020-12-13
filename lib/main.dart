import 'package:cp_provider/app_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AppColor>(
        create: (context) => AppColor(),
        child: Scaffold(
          appBar: AppBar(
            title: Consumer<AppColor>(
                builder: (context, appcolor, _) => Text(
                      'CheckPoint Provider',
                      style: TextStyle(color: appcolor.setColor()),
                    )),
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<AppColor>(
                  builder: (context, appcolor, _) => AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: 150,
                    height: 150,
                    color: appcolor.setColor(),
                    margin: EdgeInsets.all(10),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text('Green'),
                    ),
                    Consumer<AppColor>(
                      builder: (context, appcolor, _) => Switch(
                        value: appcolor.isGreen,
                        onChanged: (newValue) {
                          appcolor.isGreen = newValue;
                        },
                        activeColor: Colors.pink,
                        inactiveTrackColor: Colors.green[300],
                        inactiveThumbColor: Colors.green,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text('Pink'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
