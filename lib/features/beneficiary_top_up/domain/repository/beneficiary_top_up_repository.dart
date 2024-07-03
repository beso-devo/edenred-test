import 'package:dartz/dartz.dart';
import 'package:edenred_test/core/domain/entity/top_up_entity.dart';
import '../../../../core/data/repository/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../usecases/beneficiary_top_up_usecase.dart';

abstract class BeneficiaryTopUpRepository extends BaseRepository {
  Future<Either<Failure, TopUpEntity>> topUp(BeneficiaryTopUpParams params);
}
