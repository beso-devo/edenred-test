import 'dart:convert';

import 'package:edenred_test/core/domain/entity/user_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/data/models/base_local_data_source.dart';
import '../../../../../core/data/shared_preferences_keys.dart';

abstract class SignInLocalDataSource extends BaseLocalDataSource {}

@LazySingleton(as: SignInLocalDataSource)
class SignInLocalDataSourceImpl extends BaseLocalDataSourceImpl
    implements SignInLocalDataSource {
  SignInLocalDataSourceImpl({required SharedPreferences sharedPreferences})
      : super(sharedPreferences: sharedPreferences);
}
