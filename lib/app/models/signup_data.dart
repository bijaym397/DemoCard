class SignupData {
  String mobile;
  String otp;
  String password;
  String firstName;
  String userName;
  String email;

  SignupData({
    required this.mobile,
    required this.otp,
    required this.password,
    required this.firstName,
    required this.userName,
    required this.email,
  });

  factory SignupData.fromJson(Map<String, dynamic> json) {
    return SignupData(
      mobile: json['mobile'],
      otp: json['otp'],
      password: json['password'],
      firstName: json['firstName'],
      userName: json['userName'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mobile': mobile,
      'otp': otp,
      'password': password,
      'firstName': firstName,
      'userName': userName,
      'email': email,
    };
  }
}