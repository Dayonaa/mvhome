// ignore_for_file: library_private_types_in_public_api

class _LoginResponseDataPermissionsPivot {
/*
{
  "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
  "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
} 
*/

  String? roleId;
  String? permissionId;

  _LoginResponseDataPermissionsPivot.fromJson(Map<String, dynamic> json) {
    roleId = json['role_id'];
    permissionId = json['permission_id'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['role_id'] = roleId;
    data['permission_id'] = permissionId;
    return data;
  }
}

class _LoginResponseDataPermissions {
/*
{
  "uuid": "9dc124cd-da55-4b1a-b496-1b7cc34c0931",
  "name": "permission-user-all",
  "guard_name": "api",
  "created_at": "2024-12-18T13:31:57.000000Z",
  "updated_at": "2024-12-18T13:31:57.000000Z",
  "pivot": {
    "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
    "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
  }
} 
*/

  String? uuid;
  String? name;
  String? guardName;
  String? createdAt;
  String? updatedAt;
  _LoginResponseDataPermissionsPivot? pivot;

  _LoginResponseDataPermissions.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    guardName = json['guard_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = (json['pivot'] != null)
        ? _LoginResponseDataPermissionsPivot.fromJson(json['pivot'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['name'] = name;
    data['guard_name'] = guardName;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (pivot != null) {
      data['pivot'] = pivot!.toJson();
    }
    return data;
  }
}

class _LoginResponseDataUserRolesPermissionsPivot {
/*
{
  "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
  "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
} 
*/

  String? roleId;
  String? permissionId;
  _LoginResponseDataUserRolesPermissionsPivot.fromJson(
      Map<String, dynamic> json) {
    roleId = json['role_id'];
    permissionId = json['permission_id'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['role_id'] = roleId;
    data['permission_id'] = permissionId;
    return data;
  }
}

class _LoginResponseDataUserRolesPermissions {
/*
{
  "uuid": "9dc124cd-da55-4b1a-b496-1b7cc34c0931",
  "name": "permission-user-all",
  "guard_name": "api",
  "created_at": "2024-12-18T13:31:57.000000Z",
  "updated_at": "2024-12-18T13:31:57.000000Z",
  "pivot": {
    "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
    "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
  }
} 
*/

  String? uuid;
  String? name;
  String? guardName;
  String? createdAt;
  String? updatedAt;
  _LoginResponseDataUserRolesPermissionsPivot? pivot;

  _LoginResponseDataUserRolesPermissions.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    guardName = json['guard_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = (json['pivot'] != null)
        ? _LoginResponseDataUserRolesPermissionsPivot.fromJson(json['pivot'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['name'] = name;
    data['guard_name'] = guardName;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (pivot != null) {
      data['pivot'] = pivot!.toJson();
    }
    return data;
  }
}

class _LoginResponseDataUserRolesPivot {
/*
{
  "model_type": "App\\Models\\Auth\\User",
  "model_uuid": "9dc124d0-bf62-44d0-8892-6a2808b4cd89",
  "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b"
} 
*/

  String? modelType;
  String? modelUuid;
  String? roleId;

  _LoginResponseDataUserRolesPivot.fromJson(Map<String, dynamic> json) {
    modelType = json['model_type'];
    modelUuid = json['model_uuid'];
    roleId = json['role_id'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['model_type'] = modelType;
    data['model_uuid'] = modelUuid;
    data['role_id'] = roleId;
    return data;
  }
}

class _LoginResponseDataUserRoles {
/*
{
  "uuid": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
  "name": "user",
  "guard_name": "api",
  "created_at": "2024-12-18T13:31:56.000000Z",
  "updated_at": "2024-12-18T13:31:56.000000Z",
  "pivot": {
    "model_type": "App\\Models\\Auth\\User",
    "model_uuid": "9dc124d0-bf62-44d0-8892-6a2808b4cd89",
    "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b"
  },
  "permissions": [
    {
      "uuid": "9dc124cd-da55-4b1a-b496-1b7cc34c0931",
      "name": "permission-user-all",
      "guard_name": "api",
      "created_at": "2024-12-18T13:31:57.000000Z",
      "updated_at": "2024-12-18T13:31:57.000000Z",
      "pivot": {
        "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
        "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
      }
    }
  ]
} 
*/

  String? uuid;
  String? name;
  String? guardName;
  String? createdAt;
  String? updatedAt;
  _LoginResponseDataUserRolesPivot? pivot;
  List<_LoginResponseDataUserRolesPermissions?>? permissions;
  _LoginResponseDataUserRoles.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    guardName = json['guard_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = (json['pivot'] != null)
        ? _LoginResponseDataUserRolesPivot.fromJson(json['pivot'])
        : null;
    if (json['permissions'] != null) {
      final v = json['permissions'];
      final arr0 = <_LoginResponseDataUserRolesPermissions>[];
      v.forEach((v) {
        arr0.add(_LoginResponseDataUserRolesPermissions.fromJson(v));
      });
      permissions = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['name'] = name;
    data['guard_name'] = guardName;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (pivot != null) {
      data['pivot'] = pivot!.toJson();
    }
    if (permissions != null) {
      final v = permissions;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['permissions'] = arr0;
    }
    return data;
  }
}

class _LoginResponseDataUser {
/*
{
  "id": "9dc124d0-bf62-44d0-8892-6a2808b4cd89",
  "email": "user@gmail.com",
  "created_at": "2024-12-18T13:31:59.000000Z",
  "updated_at": "2024-12-18T13:31:59.000000Z",
  "photo_profil": "",
  "roles": [
    {
      "uuid": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
      "name": "user",
      "guard_name": "api",
      "created_at": "2024-12-18T13:31:56.000000Z",
      "updated_at": "2024-12-18T13:31:56.000000Z",
      "pivot": {
        "model_type": "App\\Models\\Auth\\User",
        "model_uuid": "9dc124d0-bf62-44d0-8892-6a2808b4cd89",
        "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b"
      },
      "permissions": [
        {
          "uuid": "9dc124cd-da55-4b1a-b496-1b7cc34c0931",
          "name": "permission-user-all",
          "guard_name": "api",
          "created_at": "2024-12-18T13:31:57.000000Z",
          "updated_at": "2024-12-18T13:31:57.000000Z",
          "pivot": {
            "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
            "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
          }
        }
      ]
    }
  ],
  "permissions": [
    ""
  ]
} 
*/

  String? id;
  String? email;
  String? createdAt;
  String? updatedAt;
  String? photoProfil;
  List<_LoginResponseDataUserRoles?>? roles;
  List<String?>? permissions;
  _LoginResponseDataUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    photoProfil = json['photo_profil'];
    if (json['roles'] != null) {
      final v = json['roles'];
      final arr0 = <_LoginResponseDataUserRoles>[];
      v.forEach((v) {
        arr0.add(_LoginResponseDataUserRoles.fromJson(v));
      });
      roles = arr0;
    }
    if (json['permissions'] != null) {
      final v = json['permissions'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      permissions = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['photo_profil'] = photoProfil;
    if (roles != null) {
      final v = roles;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['roles'] = arr0;
    }
    if (permissions != null) {
      final v = permissions;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v);
      }
      data['permissions'] = arr0;
    }
    return data;
  }
}

class _LoginResponseData {
/*
{
  "token_type": "bearer",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwczovL2Rldi1hcGkubXZob21lLmdlbml1c3RlY2hub2xvZ3kubXkuaWQvYXBpL3YxL2F1dGgvbG9naW4iLCJpYXQiOjE3MzQ2MDk2MDEsImV4cCI6MTczNDcxNzYwMSwibmJmIjoxNzM0NjA5NjAxLCJqdGkiOiJFNW51ZXdYRmtXSWRMRHBnIiwic3ViIjoiOWRjMTI0ZDAtYmY2Mi00NGQwLTg4OTItNmEyODA4YjRjZDg5IiwicHJ2IjoiMTNlOGQwMjhiMzkxZjNiN2I2M2YyMTkzM2RiYWQ0NThmZjIxMDcyZSJ9.I590BO0pY3W0zvAdwLwD5ui0I3_wuFoSKFAFJsCk5nOtsTEtTuqNHQ8RcwMK_blFNwI8WzgglkMKVP2N8ipdiQ",
  "expires_in": 108000,
  "user": {
    "id": "9dc124d0-bf62-44d0-8892-6a2808b4cd89",
    "email": "user@gmail.com",
    "created_at": "2024-12-18T13:31:59.000000Z",
    "updated_at": "2024-12-18T13:31:59.000000Z",
    "photo_profil": "",
    "roles": [
      {
        "uuid": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
        "name": "user",
        "guard_name": "api",
        "created_at": "2024-12-18T13:31:56.000000Z",
        "updated_at": "2024-12-18T13:31:56.000000Z",
        "pivot": {
          "model_type": "App\\Models\\Auth\\User",
          "model_uuid": "9dc124d0-bf62-44d0-8892-6a2808b4cd89",
          "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b"
        },
        "permissions": [
          {
            "uuid": "9dc124cd-da55-4b1a-b496-1b7cc34c0931",
            "name": "permission-user-all",
            "guard_name": "api",
            "created_at": "2024-12-18T13:31:57.000000Z",
            "updated_at": "2024-12-18T13:31:57.000000Z",
            "pivot": {
              "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
              "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
            }
          }
        ]
      }
    ],
    "permissions": [
      ""
    ]
  },
  "roles": "user",
  "permissions": [
    {
      "uuid": "9dc124cd-da55-4b1a-b496-1b7cc34c0931",
      "name": "permission-user-all",
      "guard_name": "api",
      "created_at": "2024-12-18T13:31:57.000000Z",
      "updated_at": "2024-12-18T13:31:57.000000Z",
      "pivot": {
        "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
        "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
      }
    }
  ]
} 
*/

  String? tokenType;
  String? token;
  int? expiresIn;
  _LoginResponseDataUser? user;
  String? roles;
  List<_LoginResponseDataPermissions?>? permissions;

  _LoginResponseData.fromJson(Map<String, dynamic> json) {
    tokenType = json['token_type'];
    token = json['token'];
    expiresIn = json['expires_in']?.toInt();
    user = (json['user'] != null)
        ? _LoginResponseDataUser.fromJson(json['user'])
        : null;
    roles = json['roles'];
    if (json['permissions'] != null) {
      final v = json['permissions'];
      final arr0 = <_LoginResponseDataPermissions>[];
      v.forEach((v) {
        arr0.add(_LoginResponseDataPermissions.fromJson(v));
      });
      permissions = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['token_type'] = tokenType;
    data['token'] = token;
    data['expires_in'] = expiresIn;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['roles'] = roles;
    if (permissions != null) {
      final v = permissions;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['permissions'] = arr0;
    }
    return data;
  }
}

class LoginResponse {
/*
{
  "isSuccess": true,
  "message": "success",
  "data": {
    "token_type": "bearer",
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwczovL2Rldi1hcGkubXZob21lLmdlbml1c3RlY2hub2xvZ3kubXkuaWQvYXBpL3YxL2F1dGgvbG9naW4iLCJpYXQiOjE3MzQ2MDk2MDEsImV4cCI6MTczNDcxNzYwMSwibmJmIjoxNzM0NjA5NjAxLCJqdGkiOiJFNW51ZXdYRmtXSWRMRHBnIiwic3ViIjoiOWRjMTI0ZDAtYmY2Mi00NGQwLTg4OTItNmEyODA4YjRjZDg5IiwicHJ2IjoiMTNlOGQwMjhiMzkxZjNiN2I2M2YyMTkzM2RiYWQ0NThmZjIxMDcyZSJ9.I590BO0pY3W0zvAdwLwD5ui0I3_wuFoSKFAFJsCk5nOtsTEtTuqNHQ8RcwMK_blFNwI8WzgglkMKVP2N8ipdiQ",
    "expires_in": 108000,
    "user": {
      "id": "9dc124d0-bf62-44d0-8892-6a2808b4cd89",
      "email": "user@gmail.com",
      "created_at": "2024-12-18T13:31:59.000000Z",
      "updated_at": "2024-12-18T13:31:59.000000Z",
      "photo_profil": "",
      "roles": [
        {
          "uuid": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
          "name": "user",
          "guard_name": "api",
          "created_at": "2024-12-18T13:31:56.000000Z",
          "updated_at": "2024-12-18T13:31:56.000000Z",
          "pivot": {
            "model_type": "App\\Models\\Auth\\User",
            "model_uuid": "9dc124d0-bf62-44d0-8892-6a2808b4cd89",
            "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b"
          },
          "permissions": [
            {
              "uuid": "9dc124cd-da55-4b1a-b496-1b7cc34c0931",
              "name": "permission-user-all",
              "guard_name": "api",
              "created_at": "2024-12-18T13:31:57.000000Z",
              "updated_at": "2024-12-18T13:31:57.000000Z",
              "pivot": {
                "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
                "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
              }
            }
          ]
        }
      ],
      "permissions": [
        ""
      ]
    },
    "roles": "user",
    "permissions": [
      {
        "uuid": "9dc124cd-da55-4b1a-b496-1b7cc34c0931",
        "name": "permission-user-all",
        "guard_name": "api",
        "created_at": "2024-12-18T13:31:57.000000Z",
        "updated_at": "2024-12-18T13:31:57.000000Z",
        "pivot": {
          "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
          "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
        }
      }
    ]
  }
} 
*/

  bool? isSuccess;
  String? message;
  _LoginResponseData? data;

  LoginResponse({
    this.isSuccess,
    this.message,
  });
  LoginResponse.fromJson(Map<String, dynamic> json) {
    isSuccess = json['isSuccess'];
    message = json['message'];
    data = (json['data'] != null)
        ? _LoginResponseData.fromJson(json['data'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isSuccess'] = isSuccess;
    data['message'] = message;
    data['data'] = this.data!.toJson();
    return data;
  }
}

class LoginRequest {
  late String email;
  late String password;

  LoginRequest({required this.email, required this.password});
  LoginRequest.fromJson(Map<String, dynamic> json) {
    email = json['isSuccess'];
    password = json['message'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
