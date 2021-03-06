import 'package:flutter/material.dart';
import 'package:news_mvvm/view-model/news_view_model.dart';
import 'package:news_mvvm/views/news_view.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MY APP',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfffefdfd),
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          elevation: 0,
          textTheme: TextTheme(
            headline6:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (_) => NewsListViewModel(),
        ),
      ], child: NewsView()),
    );
  }
}
