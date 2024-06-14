// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:parkingapp/core/domain/models/basic_model.dart';

class Signupmodel extends ResultModel {
    String  firstName; 
    String lastName;
    String phone;
    String username;
    String birthDate;
    String password;
    String confirmPassword;
  Signupmodel({
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.username,
    required this.birthDate,
    required this.password,
    required this.confirmPassword,
  });

  Signupmodel copyWith({
    String? firstName,
    String? lastName,
    String? phone,
    String? username,
    String? birthDate,
    String? password,
    String? confirmPassword,
  }) {
    return Signupmodel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      username: username ?? this.username,
      birthDate: birthDate ?? this.birthDate,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'username': username,
      'birthDate': birthDate,
      'password': password,
      'confirmPassword': confirmPassword,
    };
  }

  factory Signupmodel.fromMap(Map<String, dynamic> map) {
    return Signupmodel(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      phone: map['phone'] as String,
      username: map['username'] as String,
      birthDate: map['birthDate'] as String,
      password: map['password'] as String,
      confirmPassword: map['confirmPassword'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Signupmodel.fromJson(String source) => Signupmodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Signupmodel(firstName: $firstName, lastName: $lastName, phone: $phone, username: $username, birthDate: $birthDate, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(covariant Signupmodel other) {
    if (identical(this, other)) return true;
  
    return 
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.phone == phone &&
      other.username == username &&
      other.birthDate == birthDate &&
      other.password == password &&
      other.confirmPassword == confirmPassword;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
      lastName.hashCode ^
      phone.hashCode ^
      username.hashCode ^
      birthDate.hashCode ^
      password.hashCode ^
      confirmPassword.hashCode;
  }
 }
