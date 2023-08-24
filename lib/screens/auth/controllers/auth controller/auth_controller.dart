import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todoapp/general/core/error/failure.dart';
import 'package:todoapp/general/helpers/db_helper.dart';
import 'package:todoapp/general/models/user_model.dart';
import 'package:todoapp/screens/auth/controllers/auth%20controller/registration_state.dart';
import 'package:todoapp/screens/auth/repository/auth_requester.dart';

// part 'auth_provider.g.dart';

// final authControllerProvider = Provider
// ((ref) {
//   final authRepository = ref.watch(authRepositoryProvider);

final authControllerProvider =
    StateNotifierProvider<RegistrationStateNotifier, RegistrationState>(
  (ref) => RegistrationStateNotifier(ref.read(authRepositoryProvider)),
);

//   return AuthController(authRepository: authRepository);
// });

// class AuthController {
//   final AuthRepisotory authRepository;
//   AuthController({required this.authRepository}) : super();
class RegistrationStateNotifier extends StateNotifier<RegistrationState> {
  final AuthRepisotory authRepository;
  RegistrationStateNotifier(this.authRepository)
      : super(RegistrationState.initial());

  void verifyOtCodep(
      {required BuildContext context,
      required String smsId,
      required String smsCode,
      required bool isMounted}) async {
    state = const RegistrationState.loading();
    final result = await authRepository.verifyOtp(
      context: context,
      smsId: smsId,
      smsCode: smsCode,
      isMounted: isMounted,
    );
    // result.fold(
    //   (failure) => state = RegistrationState.error(
    //     DisplayMessagesUtils.mapFailureToMessage(failure),
    //   ),
    //   (success) => state = RegistrationState.loaded(),
    // );

    // state = const RegistrationState.initial();
    // authRepository.verifyOtp(
    //   context: context,
    //   smsId: smsId,
    //   smsCode: smsCode,
    //   isMounted: isMounted,
    // );
  }

  void sendyOtp({
    required BuildContext context,
    required String phone,
  }) async {
    state = const RegistrationState.loading();
    final result = authRepository.sendyOtp(
      context: context,
      phone: phone,
    );
    // result.fold(
    //   (failure) => state = RegistrationState.error(
    //     DisplayMessagesUtils.mapFailureToMessage(failure),
    //   ),
    //   (success) => state = RegistrationState.loaded(),
    // );

    // authRepository.sendyOtp(
    //   context: context,
    //   phone: phone,
    // );
  }
}
