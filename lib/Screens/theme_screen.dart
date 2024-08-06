import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider%20models/theme_model.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

bool _value = false;

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: provider.themeMode == ThemeMode.light
            ? Text(
                "Light Theme",
                style: TextStyle(color: Colors.white),
              )
            : Text(
                "Dark Themes",
                style: TextStyle(color: Colors.white),
              ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Theme Changer",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Consumer<ThemeModel>(builder: (context, value, child) {
            return Center(
              child: Switch(
                  activeColor: Colors.white,
                  value: _value,
                  onChanged: (val) {
                    _value = val;
                    value.setTheme(value: val);
                  }),
            );
          })
        ],
      ),
    );
  }
}
