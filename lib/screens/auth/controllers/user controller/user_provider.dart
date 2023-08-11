import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/general/helpers/db_helper.dart';
import 'package:todoapp/general/models/user_model.dart';


final userProvider =
    StateNotifierProvider<UserState, List<UserModel>>((ref) => UserState());

class UserState extends StateNotifier<List<UserModel>> {
  UserState() : super([]);

  void refresh() async {
    final data = await DBHeler.getUsers();

    state = data.map((e) => UserModel.fromJson(e)).toList();
  }
}
