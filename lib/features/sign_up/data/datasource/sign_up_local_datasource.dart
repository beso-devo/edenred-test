import 'dart:convert';
import 'package:edenred_test/core/domain/entity/user_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/data/shared_preferences_keys.dart';
import '../../../../core/data/models/base_local_data_source.dart';

abstract class SignUpLocalDataSource extends BaseLocalDataSource {}

@LazySingleton(as: SignUpLocalDataSource)
class SignUpLocalDataSourceImpl extends BaseLocalDataSourceImpl
    implements SignUpLocalDataSource {
  SignUpLocalDataSourceImpl({required SharedPreferences sharedPreferences})
      : super(sharedPreferences: sharedPreferences);
}
