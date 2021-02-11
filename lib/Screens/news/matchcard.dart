class MatchCard {
  String name;
  String avilable;
  String imgsrc;  String desc;
  double price;
  int people;
  double marginTop = 0;

  MatchCard(String name, String avilable, String imgsrc, double price,
      int people, double marginTop , String desc) {
    this.name = name;
    this.avilable = avilable;
    this.imgsrc = imgsrc;
    this.price = price;
    this.people = people;
    this.marginTop = marginTop;
    this.desc = desc;
  }
}
