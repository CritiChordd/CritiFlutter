class Album {
  final String id;
  final String title;
  final String artist;
  final String image;
  Album({required this.id, required this.title, required this.artist, required this.image});
}

class HomeState {
  final List<Album> albums;
  final bool loading;

  const HomeState({this.albums = const [], this.loading = true});

  HomeState copyWith({List<Album>? albums, bool? loading}) =>
      HomeState(albums: albums ?? this.albums, loading: loading ?? this.loading);
}
