// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PatientProfile {
  final String? id;
  final String firstName;
  final String lastName;
  final String phonNumber;
  final String wilaya;
  final String dateOfBirth;
  final String password;
  final String email;
  final String? gneder;
  final String? height;
  final String? weight;
  final String? bloodType;
  PatientProfile(
      {this.id,
      required this.firstName,
      required this.lastName,
      required this.phonNumber,
      required this.wilaya,
      required this.dateOfBirth,
      required this.password,
      this.gneder,
      this.height,
      required this.email,
      this.bloodType,
      this.weight});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'birth_date': dateOfBirth,
      'state': wilaya,
      'password': password,
    };
  }

  factory PatientProfile.fromMap(Map<String, dynamic> map) {
    return PatientProfile(
      firstName: map['first_name'] as String,
      lastName: map['last_name'] as String,
      phonNumber: map['number'] as String,
      password: map['password'] as String,
      email: map['email'],
      wilaya: map['state'] as String,
      dateOfBirth: map['birth_date'] as String,
      gneder: map['gneder'] != null ? map['gender'] as String : null,
      height: map['height'] != null ? map['height'] as String : null,
      weight: map['weight'] != null ? map['weight'] as String : null,
      bloodType: map['bloodType'] != null ? map['bloodType'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PatientProfile.fromJson(String source) =>
      PatientProfile.fromMap(json.decode(source) as Map<String, dynamic>);
}
