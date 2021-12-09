import 'package:flutter/material.dart';
import 'package:learning/Flutter%20MVVM%20architecture/view_model/movie_view_model.dart';
import 'package:learning/Flutter%20MVVM%20architecture/web_service.dart';

class MovieListViewModel extends ChangeNotifier {

  List<MovieViewModel> movies = List<MovieViewModel>();

  Future<void> fetchMovies(String keyword) async {
    final results =  await Webservice().fetchMovies(keyword);
    this.movies = results.map((item) => MovieViewModel(movie: item)).toList();
    notifyListeners();
  }

}