// import '../../domain/entitiy/login_entitiy.dart';
//
// class LoginResponse extends LoginEntity {
//   LoginResponse({bool? status, String? message, DataModel? data})
//       : super(status: status, message: message, data: data);
//
//   LoginResponse.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     message = json['message'];
//     data = json['data'] != null ? DataModel.fromJson(json['data']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['status'] = status;
//     data['message'] = message;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }
//
// class DataModel extends Data {
//   DataModel(
//       {int? id,
//       String? apiToken,
//       String? name,
//       String? email,
//       String? phone,
//       String? dateOfBirth,
//       int? maritalStatus,
//       int? type,
//       String? university,
//       int? level,
//       int? section,
//       String? image,bool? isVerified})
//       : super(
//             id: id,
//             apiToken: apiToken,
//             name: name,
//             email: email,
//             phone: phone,
//             dateOfBirth: dateOfBirth,
//             maritalStatus: maritalStatus,
//             type: type,
//             university: university,
//             level: level,
//             section: section,
//             image: image,isVerified: isVerified);
//
//   DataModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     apiToken = json['api_token'];
//     name = json['name'];
//     email = json['email'];
//     phone = json['phone'];
//     dateOfBirth = json['date_of_birth'];
//     maritalStatus = json['marital_status'];
//     type = json['type'];
//     university = json['university'];
//     level = json['level'];
//     section = json['section'];
//     image = json['image'];
//     isVerified = json['is_verified'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     data['api_token'] = apiToken;
//     data['name'] = name;
//     data['email'] = email;
//     data['phone'] = phone;
//     data['date_of_birth'] = dateOfBirth;
//     data['marital_status'] = maritalStatus;
//     data['type'] = type;
//     data['university'] = university;
//     data['level'] = level;
//     data['section'] = section;
//     data['image'] = image;
//     data['is_verified']=isVerified;
//     return data;
//   }
// }
