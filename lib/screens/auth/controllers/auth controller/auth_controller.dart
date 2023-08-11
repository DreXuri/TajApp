import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todoapp/general/helpers/db_helper.dart';
import 'package:todoapp/general/models/user_model.dart';
import 'package:todoapp/screens/auth/repository/auth_requester.dart';

// part 'auth_provider.g.dart';

final authControllerProvider = Provider((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthController(authRepository: authRepository);
});

class AuthController {
  final AuthRepisotory authRepository;
  AuthController({required this.authRepository}) : super();

  void verifyOtCodep({
    required BuildContext context,
    required String smsId,
    required String smsCode,
    required bool isMounted,
  }) {
    authRepository.verifyOtp(
      context: context,
      smsId: smsId,
      smsCode: smsCode,
      isMounted: isMounted,
    );
  }

  void sendyOtp({
    required BuildContext context,
    required String phone,
  }) {
    authRepository.sendyOtp(
      context: context,
      phone: phone,
    );
  }
}
