class UserModel {
  String? fullname;
  String? email;
  String? password;
  
  UserModel({this.fullname, this.email, this.password});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        fullname: json['fullname'],
        email: json['email'],
        password: json['password']);
  }

  Map<String, dynamic> toJson() {
    return {'fullname': fullname, 'email': email, 'password': password};
  }
}
