class Movie {
  final String id;
  final String title;
  final String imageUrl;
  final String duration;
  final String year;
  final String rating;
  final String description;
  Movie({
    this.id,
    this.title,
    this.imageUrl,
    this.description,
    this.rating,
    this.year,
    this.duration
  });
}

final movieList = [
  Movie(
      id: 'tt6105098',
      title: 'The Lion King',
      description: 'After the murder of his father, a young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.',
      rating: '7.1',
      year: '2019',
      duration: '118 min',
      imageUrl: 'img/lion_king.jpg'
  ),
  Movie(
      id: 'tt1389886',
      title: 'Cinderella',
    description:
        'After the untimely death of her father, Ella is troubled by her stepmother and stepsisters. However, her life changes forever after dancing with a charming stranger at the Royal Ball.',
    duration: '114 min',
    rating: '7.0',
    year: '2015',
    imageUrl: 'img/Cinderella.jpeg',
  ),
  Movie(
      id: 'tt4154796',
      title: 'Avengers: Endgame',
    description:
    'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse...',
    rating: '8.6',
    year: '2019',
    duration: '181 min',
      imageUrl: 'img/Avengers.jpg',

  ),


  Movie(
      id: 'tt7349950',
      title: 'It: Chapter Two',
    description: 'Twenty-seven years after their first encounter with the terrifying Pennywise, the Losers Club have grown up and moved away, until a devastating phone call brings them back.',
    rating: '7.0',
    year: '2019',
    duration: '169 min',
      imageUrl: 'img/It_2.jpg',

  ),

];

final topRatedMovieList = [
  Movie(
      id: 'tt1979376',
      title: 'Toy Story 4',
    description:
        'When a new toy called \"Forky\" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy.',
    rating: '8.1',
    year: '2019',
    duration: '100 min',
    imageUrl: 'img/toy_story4.jpg',

  ),
  Movie(
      id: 'tt4633694',
      title: 'Spider-Man: Into the Spider-Verse',
    description:
        'Teen Miles Morales becomes Spider-Man of his reality, crossing his path with five counterparts from other dimensions to stop a threat for all realities.',
    rating: '8.4',
    year: '2018',
    duration: '117 min',
    imageUrl: 'img/spider_man.jpg',

  ),
  Movie(
      id: 'tt0816692',
      title: 'Interstellar',
    description:
        'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',
    rating: '8.6',
    year: '2014',
    duration: '169 min',
    imageUrl: 'img/intersellar.jpg',

  ),



  Movie(
      id: 'tt9248972',
      title: 'Mission Mangal',
    description:
        'Based on true events of the Indian Space Research Organisation (ISRO) successfully launching the Mars Orbiter Mission (Mangalyaan), making it the least expensive mission to Mars.',
    rating: '6.6',
    year: '2019',
    duration: '130 min',
    imageUrl: 'img/mission_mangal.jpg',

  ),
];