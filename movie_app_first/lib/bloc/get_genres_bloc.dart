import 'package:movie_app/repository.dart';
import 'package:movie_app/genre_response.dart';
import 'package:rxdart/subjects.dart';

class GenresListBLoc{
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<GenreResponse> _subject = BehaviorSubject<GenreResponse>();
  getMovies()async{
    GenreResponse response = await _repository.getGenres();
    _subject.sink.add(response);
  }
  dispose(){
    _subject.close();
  }
  BehaviorSubject<GenreResponse>get subject => _subject;
}
final genresBloc = GenresListBLoc();