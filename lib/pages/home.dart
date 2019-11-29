import 'package:darkthemetest/blocs/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        
        ),
          body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('Dark Theme'),
              onPressed: () => _themeChanger.setTheme(ThemeData.dark()),
            ),
            
            FlatButton(
              child: Text('Light Theme'),
              onPressed: () => _themeChanger.setTheme(ThemeData.light()),
            ),
        ],
        )
      ),
    );
  }
}