class LoginResponseModel {
  final int status;
  final String statusMessage;
  final List<UserData> data;

  LoginResponseModel({
    required this.status,
    required this.statusMessage,
    required this.data,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      status: json['status'],
      statusMessage: json['statusMessage'],
      data: List<UserData>.from(
        json['data'].map((x) => UserData.fromJson(x)),
      ),
    );
  }
}

class UserData {
  final String name;
  final int userId;
  final List<Role> roles;
  final String accessToken;
  final String refreshToken;

  UserData({
    required this.name,
    required this.userId,
    required this.roles,
    required this.accessToken,
    required this.refreshToken,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      name: json['name'],
      userId: json['user_ID'],
      roles: List<Role>.from(json['role'].map((x) => Role.fromJson(x))),
      accessToken: json['access_Token'],
      refreshToken: json['refresh_Token'],
    );
  }
}

class Role {
  final String roleName;
  final int roleId;

  Role({
    required this.roleName,
    required this.roleId,
  });

  factory Role.fromJson(Map<String, dynamic> json) {
    return Role(
      roleName: json['role_name'],
      roleId: json['role_id'],
    );
  }
}
