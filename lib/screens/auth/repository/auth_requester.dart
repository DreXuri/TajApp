import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/general/helpers/db_helper.dart';
import 'package:todoapp/general/utils/utils.dart';
import 'package:todoapp/general/widgets/navbar.dart';
import 'package:todoapp/screens/auth/views/otp_phone.dart';

final authRepositoryProvider = Provider((ref) {
  return AuthRepisotory(auth: FirebaseAuth.instance);
});

class AuthRepisotory {
  AuthRepisotory({
    required this.auth,
  });

  final FirebaseAuth auth;

  verifyOtp({
    required BuildContext context,
    required String smsId,
    required String smsCode,
    required bool isMounted,
  }) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: smsId,
        smsCode: smsCode,
      );

      await auth.signInWithCredential(credential);
      if (!isMounted) {
        return;
      }
      Navigator.of(context).pushNamed(BottomBar.routeName);
    } on FirebaseAuth catch (e) {
      debugPrint(e.toString());
      showCustomSnackBarAfterFrame(context, e.toString(), isError: true);
    }
  }

  void sendyOtp({
    required BuildContext context,
    required String phone,
  }) async {
    try {
      await auth.verifyPhoneNumber(
          phoneNumber: phone,
          verificationCompleted: (PhoneAuthCredential credential) async {
            await auth.signInWithCredential(credential);
          },
          verificationFailed: (e) {
            debugPrint(e.toString());
            showCustomSnackBarAfterFrame(
              context,
              e.toString(),
              // isError: false,
              isError: true,
            );
          },
          codeSent: (smsId, resendCodeId) {
            DBHeler.createUser(1);
            // Navigator.of(context).pushNamedAndRemoveUntil(
            //     OtpPhoneScreen.route, (route) => false,
            //     arguments: {'phone': phone, 'smsId': smsId});
            Navigator.of(context).pushNamed(OtpPhoneScreen.route,
                arguments: {'phone': phone, 'smsId': smsId});
            // Navigator.of(context).pushReplacementNamed(OtpPhoneScreen.route,
            //     arguments: {'phone': phone, 'smsId': smsId});
          },
          codeAutoRetrievalTimeout: (String smsId) {});
    } on FirebaseAuth catch (e) {
      debugPrint(e.toString());
      showCustomSnackBarAfterFrame(context, e.toString(), isError: true);
    }
  }
}
