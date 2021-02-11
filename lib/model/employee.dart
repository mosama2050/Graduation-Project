class Employee {
  int _id;
  String _year;
  String _name;
  String _department;
  String _term;
  String _description;

  Employee(
      this._year, this._name, this._department
      , this._term, this._description
      );

  Employee.map(dynamic obj) {
    this._id = obj['id'];
    this._year = obj['year'];
    this._name = obj['name'];
    this._department = obj['department'];
    this._term = obj['term'];
    this._description = obj['description'];
  }

  int get id => _id;
  String get year => _year;
  String get name => _name;
  String get department => _department;
  String get term => _term;
  String get description => _description;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['year']  = _year;
    map['name']  = _name;
    map['department']  = _department;
    map['term']  = _term;
    map['description'] = _description;

    return map;
  }

  Employee.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._year = map['year'];
    this._name = map['name'];
    this._department = map['department'];
    this._term = map['term'];
    this._description = map['description'];
  }
}
