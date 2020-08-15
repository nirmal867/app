import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/home_view.dart';

Future<void> main() async {
  //initialize the binding
  WidgetsFlutterBinding.ensureInitialized();
  //set landscape mode forcefully
  // await SystemChrome.setPreferredOrientations(
  // [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeView(),
    );
  }
}
