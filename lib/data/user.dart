class _UserResponseDataPermissionsPivot {
/*
{
  "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
  "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
} 
*/

  String? roleId;
  String? permissionId;

  _UserResponseDataPermissionsPivot.fromJson(Map<String, dynamic> json) {
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

class _UserResponseDataPermissions {
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
  _UserResponseDataPermissionsPivot? pivot;

  _UserResponseDataPermissions.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    guardName = json['guard_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = (json['pivot'] != null)
        ? _UserResponseDataPermissionsPivot.fromJson(json['pivot'])
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

class _UserResponseDataUserRolesPermissionsPivot {
/*
{
  "role_id": "9dc124cd-6c2e-4ccf-a8e2-36500d00169b",
  "permission_id": "9dc124cd-da55-4b1a-b496-1b7cc34c0931"
} 
*/

  String? roleId;
  String? permissionId;

  _UserResponseDataUserRolesPermissionsPivot.fromJson(
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

class _UserResponseDataUserRolesPermissions {
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
  _UserResponseDataUserRolesPermissionsPivot? pivot;

  _UserResponseDataUserRolesPermissions.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    guardName = json['guard_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = (json['pivot'] != null)
        ? _UserResponseDataUserRolesPermissionsPivot.fromJson(json['pivot'])
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

class _UserResponseDataUserRolesPivot {
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

  _UserResponseDataUserRolesPivot.fromJson(Map<String, dynamic> json) {
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

class _UserResponseDataUserRoles {
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
  _UserResponseDataUserRolesPivot? pivot;
  List<_UserResponseDataUserRolesPermissions?>? permissions;

  _UserResponseDataUserRoles.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    guardName = json['guard_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = (json['pivot'] != null)
        ? _UserResponseDataUserRolesPivot.fromJson(json['pivot'])
        : null;
    if (json['permissions'] != null) {
      final v = json['permissions'];
      final arr0 = <_UserResponseDataUserRolesPermissions>[];
      v.forEach((v) {
        arr0.add(_UserResponseDataUserRolesPermissions.fromJson(v));
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

class _UserResponseDataUser {
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
  List<_UserResponseDataUserRoles?>? roles;
  List<String?>? permissions;
  _UserResponseDataUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    photoProfil = json['photo_profil'];
    if (json['roles'] != null) {
      final v = json['roles'];
      final arr0 = <_UserResponseDataUserRoles>[];
      v.forEach((v) {
        arr0.add(_UserResponseDataUserRoles.fromJson(v));
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

class _UserResponseData {
/*
{
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

  _UserResponseDataUser? user;
  String? roles;
  List<_UserResponseDataPermissions?>? permissions;

  _UserResponseData.fromJson(Map<String, dynamic> json) {
    user = (json['user'] != null)
        ? _UserResponseDataUser.fromJson(json['user'])
        : null;
    roles = json['roles'];
    if (json['permissions'] != null) {
      final v = json['permissions'];
      final arr0 = <_UserResponseDataPermissions>[];
      v.forEach((v) {
        arr0.add(_UserResponseDataPermissions.fromJson(v));
      });
      permissions = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
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

class UserResponse {
/*
{
  "isSuccess": true,
  "message": "User detail",
  "data": {
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
  _UserResponseData? data;

  UserResponse({
    this.isSuccess,
    this.message,
    this.data,
  });
  UserResponse.fromJson(Map<String, dynamic> json) {
    isSuccess = json['isSuccess'];
    message = json['message'];
    data = (json['data'] != null)
        ? _UserResponseData.fromJson(json['data'])
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
