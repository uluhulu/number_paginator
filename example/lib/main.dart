
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:number_paginator/number_paginator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              NumberPaginator(
                numberPages: 10,
                onPageChange: (int index) {},
                // initially selected index
                initialPage: 1,
                rightButton: SvgPicture.asset("assets/icon/arrow-right-1.svg"),
                leftButton: SvgPicture.asset("assets/icon/arrow-left-1.svg"),
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

                  arrowSelectedForegroundColor: Colors.red,
                  arrowUnselectedForegroundColor: Colors.green,
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
