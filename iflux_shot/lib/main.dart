import 'package:flutter/material.dart';
import 'package:iflux_shot/view_model/home_vm.dart';
import 'package:iflux_shot/views/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (_) => HomeViewModel(),
        child: HomeScreen(),
      ),
    );
  }
}
