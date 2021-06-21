class Person {
  final int id;
  final double popularity;
  final String name;
  final String profileImg;
  final String known;

  Person(
      this.id, this.popularity, this.name,
      this.profileImg, this.known
      );
  Person.fromJson(Map<String,dynamic>json)
      : id = json["id"],
        popularity = json["popularity"],
        name = json["name"],
        known  = json["known_for_department"],
        profileImg = json["profile_path"]
  ;
}