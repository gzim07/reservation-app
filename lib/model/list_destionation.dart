class Destination {
  String city;
  String country;
  String img;
  Destination(this.city, this.country, this.img);

  static List<Destination> destinations = [
    Destination("Amsterdam", "Netherlands", "assets/amsterdam.jpg"),
    Destination("Alps", "Switzerland", "assets/alps.jpg"),
    Destination("Paris", "France", "assets/paris.jpg"),
    Destination("Venice", "italy", "assets/venice.jpg")
  ];
}
