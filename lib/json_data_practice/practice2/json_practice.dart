class FinalClass {
  String price;
  List<User> user;
  List<String> image;
  Coordinates coordinates;

  FinalClass(this.price, this.coordinates, this.image, this.user);

  FinalClass.fromJson(Map<String, dynamic> map) {
    price = map['price'];
    if (map['user'] != null) {
      user = <User>[];
      map['user'].forEach((element) {
        user.add(User.fromJson(element));
      });
    }
    if (map['images'] != null) {
      image = List<String>.from(map['images']);
    }
    if (map['coordinates'] != null) {
      coordinates = Coordinates.fromJson(map['coordinates']);
    }
  }
}

class User {
  int id;
  String name;
  String work;
  String email;
  String dob;
  String address;
  String city;
  String optedin;

  User(
    this.name,
    this.id,
    this.email,
    this.address,
    this.city,
    this.dob,
    this.optedin,
    this.work,
  );

  User.fromJson(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    email = map['email'];
    dob = map['dob'];
    address = map['address'];
    city = map['city'];
    optedin = map['optedin'];
  }
}

class Coordinates {
  double x;
  double y;

  Coordinates(this.x, this.y);

  Coordinates.fromJson(Map<String, dynamic> map) {
    x = map['x'];
    y = map['y'];
  }
}
