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
  final FirebaseAuth auth;

  AuthRepisotory({
    required this.auth,
  });

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
// Navigator.pushReplacement(context, const BottomBar.);
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

            showCustomSnackBarAfterFrame(context, e.toString(), isError: true);
          },
          codeSent: (smsId, resendCodeId) {
            DBHeler.createUser(1);
            Navigator.of(context).pushNamed(OtpPhoneScreen.route,
                arguments: {' phone': phone, 'smsId': smsId});
          },
          codeAutoRetrievalTimeout: (smsId) {});

      // await auth.signInWithCredential(credential);
    } on FirebaseAuth catch (e) {
      debugPrint(e.toString());

      showCustomSnackBarAfterFrame(context, e.toString(), isError: true);
    }
  }
}
