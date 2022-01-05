import 'package:flutter/material.dart';
import 'package:learning/Flutter%20MVVM%20architecture/view_model/movie_list_view_model.dart';
import 'package:learning/widgets_day/placeholder.dart';

import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Movies MVVM Example",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),

        home:
        ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
          child: PlacehomderExample(),
        )
    );
  }

}