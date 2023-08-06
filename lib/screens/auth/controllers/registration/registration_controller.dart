import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/general/core/error/failure.dart';
import 'package:todoapp/general/params/params.dart';
import 'package:todoapp/screens/auth/controllers/registration/registration_state.dart';
import 'package:todoapp/screens/data/repositories/auth_repository.dart';


final regControllerProvider = StateNotifierProvider<RegistrationStateNotifier, RegistrationState>(
  (ref) => RegistrationStateNotifier(ref.read(authRepositoryProvider)),
);

class RegistrationStateNotifier extends StateNotifier<RegistrationState> {
  final AuthRepository authRepository;

  RegistrationStateNotifier(this.authRepository) : super(RegistrationState.initial());

  Future<void> registerPhone(RegistrationParams params) async {
    state = const RegistrationState.loading();

    // final result = await authRepository.registerPhone(params);
    // result.fold(
    //   (failure) => state = RegistrationState.error(
    //     DisplayMessagesUtils.mapFailureToMessage(failure),
    //   ),
    //   (success) => state = RegistrationState.loaded(),
    // );

    // state = const RegistrationState.initial();
  }

}
