import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider_practice/Screens/example_screen.dart';
// import 'package:provider_practice/Screens/favourite_screen.dart';
// import 'package:provider_practice/Screens/home_screen.dart';
import 'package:provider_practice/Screens/theme_screen.dart';
// import 'package:provider_practice/provider%20models/example_model.dart';
// import 'package:provider_practice/provider%20models/favourite_model.dart';
// import 'package:provider_practice/provider%20models/home_model.dart';
import 'package:provider_practice/provider%20models/theme_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          // ChangeNotifierProvider(create: (_) => HomeModel()),
          // ChangeNotifierProvider(create: (_) => ExampleModel()),
          // ChangeNotifierProvider(create: (_) => FavouriteModel()),
          ChangeNotifierProvider(create: (_) => ThemeModel()),
        ],
        child: Builder(builder: (BuildContext context) {
          final theme = Provider.of<ThemeModel>(context);

          return MaterialApp(
            themeMode: theme.themeMode,
            theme: ThemeData(
                brightness: Brightness.light,
                appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                textTheme: TextTheme(),
                appBarTheme: AppBarTheme(backgroundColor: Colors.red)),
            home: ThemeScreen(),
          );
        }));
  }
}
