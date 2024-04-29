// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  int? personID;
  String? name;
  String? age;
  String? decimal;
  String? nationalityID;
  String? birthDate;
  int? datetime;
  User({
    this.personID,
    this.name,
    this.age,
    this.decimal,
    this.nationalityID,
    this.birthDate,
    this.datetime,
  });

  User copyWith({
    int? personID,
    String? name,
    String? age,
    String? decimal,
    String? nationalityID,
    String? birthDate,
    int? datetime,
  }) {
    return User(
      personID: personID ?? this.personID,
      name: name ?? this.name,
      age: age ?? this.age,
      decimal: decimal ?? this.decimal,
      nationalityID: nationalityID ?? this.nationalityID,
      birthDate: birthDate ?? this.birthDate,
      datetime: datetime ?? this.datetime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'personID': personID,
      'name': name,
      'age': age,
      'decimal': decimal,
      'nationalityID': nationalityID,
      'birthDate': birthDate,
      'datetime': datetime,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      personID: map['personID'] != null ? map['personID'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      age: map['age'] != null ? map['age'] as String : null,
      decimal: map['decimal'] != null ? map['decimal'] as String : null,
      nationalityID:
          map['nationalityID'] != null ? map['nationalityID'] as String : null,
      birthDate: map['birthDate'] != null ? map['birthDate'] as String : null,
      datetime: map['datetime'] != null ? map['datetime'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(personID: $personID, name: $name, age: $age, decimal: $decimal, nationalityID: $nationalityID, birthDate: $birthDate, datetime: $datetime)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.personID == personID &&
        other.name == name &&
        other.age == age &&
        other.decimal == decimal &&
        other.nationalityID == nationalityID &&
        other.birthDate == birthDate &&
        other.datetime == datetime;
  }

  @override
  int get hashCode {
    return personID.hashCode ^
        name.hashCode ^
        age.hashCode ^
        decimal.hashCode ^
        nationalityID.hashCode ^
        birthDate.hashCode ^
        datetime.hashCode;
  }
}
