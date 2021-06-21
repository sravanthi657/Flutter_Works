import 'package:movie_app/repository.dart';
import 'package:movie_app/person_response.dart';
import 'package:rxdart/subjects.dart';

class PersonsListBloc{
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<PersonResponse> _subject = BehaviorSubject<PersonResponse>();
  getMovies()async{
    PersonResponse response = await _repository.getPersons();
    _subject.sink.add(response);
  }
 dispose(){
    _subject.close();
 }
  BehaviorSubject<PersonResponse>get subject => _subject;
}
final personBloc = PersonsListBloc();