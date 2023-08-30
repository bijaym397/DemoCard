class User {
  String firstName;
  String lastName;
  String userName;
  String mobile;
  String? email;
  String token;
  String id;
  String role;

  User({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.mobile,
    this.email,
    required this.token,
    required this.id,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['firstName'],
      lastName: json['lastName'],
      userName: json['userName'],
      mobile: json['mobile'].toString(), // Assuming mobile is stored as a string
      email: json['email'],
      token: json['token'],
      id: json['_id'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'mobile': mobile,
      'email': email,
      'token': token,
      '_id': id,
      'role': role,
    };
  }
}
