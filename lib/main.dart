
import 'package:flutter/material.dart';
import 'form/forms.dart';
import 'layout/aspect.dart';
import 'layout/center.dart';
import 'layout/colomns.dart';
import 'layout/expandeds.dart';
import 'layout/gridview.dart';
import 'layout/listview.dart';
import 'layout/paddings.dart';
import 'layout/rows.dart';
import 'layout/sizedboxs.dart';
import 'layout/stacks.dart';
import 'layout/wraps.dart';
import 'nav/drawer.dart';
import 'nav/navbort.dart';
import 'nav/poppushnav.dart';
import 'nav/slibar.dart';
import 'nav/tabbar.dart';
import 'widget/appbar.dart';
import 'widget/button.dart';
import 'widget/circleav.dart';
import 'widget/col.dart';
import 'widget/containers.dart';
import 'widget/icon.dart';
import 'widget/row.dart';
import 'widget/scaffolds.dart';
import 'widget/texts.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: registrasi(),
    );
  }
}
