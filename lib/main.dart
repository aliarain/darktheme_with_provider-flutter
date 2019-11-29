import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'blocs/theme.dart';
import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (BuildContext context) => ThemeChanger(ThemeData.dark()),
          child: new MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final theme =Provider.of<ThemeChanger>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: theme.getTheme(),
      );
  }
}
