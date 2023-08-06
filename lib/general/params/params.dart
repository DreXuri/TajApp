import 'dart:io';

import 'package:http/http.dart' as http;

abstract class Params {
  const Params();
}

class LoginParams extends Params {
  final String phoneNumber;
  const LoginParams({required this.phoneNumber});
}

class RegistrationParams extends Params {
  final String phone;
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final String verificationCode;

  const RegistrationParams({
    required this.email,
    required this.phone,
    required this.verificationCode,
    required this.firstName,
    required this.lastName,
    required this.password,
  });
}

class ResetParams extends Params {
  final String? currentPassword;
  final String? newPassword;
  final String? retypePassword;
  final String? emailOrPhone;
  final String? code;

  const ResetParams({
    this.currentPassword,
    this.newPassword,
    this.retypePassword,
    this.emailOrPhone,
    this.code,
  });
}

class VendorsParams extends Params {
  final String filter;
  final int order;
  final int pageNo;
  final String? companyId;
  final String? query;
  final String? category;

  VendorsParams(
      {required this.filter,
      required this.order,
      this.pageNo = 1,
      this.companyId,
      this.query,
      this.category});
}

class CoverParams extends Params {
  final String category;
  final int pageNo;
  final String? query;
  final String? productId;
  const CoverParams(
      {required this.category, this.pageNo = 1, this.query, this.productId});
}

class ProfileParams extends Params {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  // final File? file;
  final http.MultipartFile? file;

  final String? currentPassword;
  final String? newPassword;

  const ProfileParams({
    this.firstName,
    this.lastName,
    this.email,
    this.file,
    this.phone,
    this.currentPassword,
    this.newPassword,
  });
}
