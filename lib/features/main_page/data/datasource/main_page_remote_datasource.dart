import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:edenred_test/core/domain/entity/beneficiary_entity.dart';
import 'package:edenred_test/core/domain/entity/user_entity.dart';
import 'package:edenred_test/core/network/models/base_list_response_model.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/data/models/base_remote_datasource.dart';
import '../../../../core/network/models/base_response_model.dart';
import '../../../../core/util/constants.dart';

abstract class MainPageRemoteDataSource extends BaseRemoteDataSource {
  Future<BaseListResponseModel<BeneficiaryEntity>> getBeneficiaries(
      String token, String url);
}

@LazySingleton(as: MainPageRemoteDataSource)
class MainPageRemoteDataSourceImpl extends BaseRemoteDataSourceImpl
    implements MainPageRemoteDataSource {
  MainPageRemoteDataSourceImpl({required Dio dio}) : super(dio: dio);

  @override
  Future<BaseListResponseModel<BeneficiaryEntity>> getBeneficiaries(
      String token, String url) async {
    // final result = await dio.get(url + Endpoints.GET_BENEFICIARIES,
    //     options: GetOptions.getOptionsWithToken(token));

    return BaseListResponseModel(data: []);
  }
}
