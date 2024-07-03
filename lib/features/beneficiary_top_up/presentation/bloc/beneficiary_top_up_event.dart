import 'package:edenred_test/core/domain/entity/beneficiary_entity.dart';

abstract class BeneficiaryTopUpEvent {}

class AmountChanged extends BeneficiaryTopUpEvent {
  final String val;

  AmountChanged(this.val);
}

class TopUpSubmit extends BeneficiaryTopUpEvent {
  final BeneficiaryEntity beneficiaryEntity;

  TopUpSubmit(this.beneficiaryEntity);
}

class ClearErrors extends BeneficiaryTopUpEvent {}