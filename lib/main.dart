import 'package:flutter/material.dart';
import 'package:flutter_basic_with_kuldii/appbar.dart';
import 'package:flutter_basic_with_kuldii/date_format.dart';
import 'package:flutter_basic_with_kuldii/dialog.dart';
import 'package:flutter_basic_with_kuldii/dismissible.dart';
import 'package:flutter_basic_with_kuldii/drawer.dart';
import 'package:flutter_basic_with_kuldii/extract_widget.dart';
import 'package:flutter_basic_with_kuldii/grid_view.dart';
import 'package:flutter_basic_with_kuldii/list_tile.dart';
import 'package:flutter_basic_with_kuldii/list_view.dart';
import 'package:flutter_basic_with_kuldii/mapping_list.dart';
import 'package:flutter_basic_with_kuldii/stack.dart';
import 'package:flutter_basic_with_kuldii/statefull.dart';
import 'package:flutter_basic_with_kuldii/switch.dart';
import 'package:flutter_basic_with_kuldii/tab_bar.dart';
import 'package:flutter_basic_with_kuldii/text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Switchs(),
    );
  }
}
