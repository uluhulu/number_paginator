import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:number_paginator/number_paginator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int curp = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              NumberPaginator(
                numberPages: 100,
                onPageChange: (int index) {
                  setState(() {
                    curp = index;
                  });
                },
                // initially selected index
                initialPage: curp,
                rightButton: Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
                leftButton: Icon(
                  Icons.chevron_left,
                  color: Colors.grey,
                ),
                rightButtonActive: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                ),
                leftButtonActive: Icon(Icons.chevron_left, color: Colors.red),
                config: const NumberPaginatorUIConfig(
                  // default height is 48
                  height: 40,
                  buttonShape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  buttonSelectedForegroundColor: Colors.white,
                  buttonUnselectedForegroundColor: Colors.black,
                  buttonUnselectedBackgroundColor: Colors.transparent,
                  buttonSelectedBackgroundColor: Colors.blue,
                  mainAxisAlignment: MainAxisAlignment.start,

                  arrowUnselectedBackgroundColor: Colors.red,
                  arrowSelectedBackgroundColor: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
