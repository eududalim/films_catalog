class BaseApi {
  static const String _apiKey = 'c47f0290da8021ded7b0adf2389f5239';

  static const _language = 'pt-BR';

  static const apiGenres =
      'https://api.themoviedb.org/3/genre/movie/list?api_key=$_apiKey&language=$_language';

  static String search(String search) =>
      'https://api.themoviedb.org/3/search/movie?api_key=$_apiKey&language=$_language&query=$search&page=1&include_adult=false';
}
