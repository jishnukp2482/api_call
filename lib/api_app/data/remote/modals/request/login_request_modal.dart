class LoginRequestModal {
  final String username;
  final String password;
  final int loginType;

  LoginRequestModal({
    required this.username,
    required this.password,
    required this.loginType,
  });

  // Method to convert the object to JSON
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'loginType': loginType,
    };
  }
}
