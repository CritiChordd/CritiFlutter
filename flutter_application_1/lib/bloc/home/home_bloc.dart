import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<LoadAlbums>(_onLoadAlbums);
  }

  Future<void> _onLoadAlbums(LoadAlbums event, Emitter<HomeState> emit) async {
    emit(state.copyWith(loading: true));
    await Future.delayed(Duration(seconds: 1)); // Simula carga
    emit(state.copyWith(
      albums: [
        Album(
          id: '1',
          title: 'A New Start',
          artist: 'Rels B',
          image: 'assets/images/newstart.jpg',
        ),
        Album(
          id: '2',
          title: 'Paz Mental',
          artist: 'Eladio Carrion',
          image: 'assets/images/paz_mental.jpg',
        ),
        Album(
          id: '3',
          title: 'DbTmF',
          artist: 'Bad Bunny',
          image: 'assets/images/dtmf.jpg',
        ),
      ],
      loading: false,
    ));
  }
}
