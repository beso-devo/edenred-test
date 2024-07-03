// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../features/add_new_beneficiary/data/datasource/add_new_beneficiary_remote_datasource.dart'
    as _i28;
import '../../features/add_new_beneficiary/data/repository/add_new_beneficiary_repository_impl.dart'
    as _i30;
import '../../features/add_new_beneficiary/domain/repository/add_new_beneficiary_repository.dart'
    as _i29;
import '../../features/add_new_beneficiary/domain/usecases/add_new_beneficiary_usecase.dart'
    as _i31;
import '../../features/add_new_beneficiary/presentation/bloc/add_new_beneficiary_bloc.dart'
    as _i44;
import '../../features/beneficiary_top_up/data/datasource/beneficiary_top_up_remote_datasource.dart'
    as _i32;
import '../../features/beneficiary_top_up/data/repository/beneficiary_top_up_repository_impl.dart'
    as _i34;
import '../../features/beneficiary_top_up/domain/repository/beneficiary_top_up_repository.dart'
    as _i33;
import '../../features/beneficiary_top_up/domain/usecases/beneficiary_top_up_usecase.dart'
    as _i35;
import '../../features/beneficiary_top_up/presentation/bloc/beneficiary_top_up_bloc.dart'
    as _i45;
import '../../features/main_page/data/datasource/main_page_local_datasource.dart'
    as _i15;
import '../../features/main_page/data/datasource/main_page_remote_datasource.dart'
    as _i16;
import '../../features/main_page/data/repository/dealer_main_repository_impl.dart'
    as _i18;
import '../../features/main_page/domain/repository/dealer_main_repository.dart'
    as _i17;
import '../../features/main_page/domain/usecases/get_beneficiaries_usecase.dart'
    as _i37;
import '../../features/main_page/presentation/bloc/main_page_bloc.dart' as _i39;
import '../../features/sign_in/data/datasource/sign_in_local_datasource.dart'
    as _i7;
import '../../features/sign_in/data/datasource/sign_in_remote_datasource.dart'
    as _i20;
import '../../features/sign_in/data/repository/sign_in_repository_impl.dart'
    as _i22;
import '../../features/sign_in/domain/repository/sign_in_repository.dart'
    as _i21;
import '../../features/sign_in/domain/usecases/sign_in_usecase.dart' as _i23;
import '../../features/sign_in/presentation/bloc/sign_in_bloc.dart' as _i40;
import '../../features/sign_up/data/datasource/sign_up_local_datasource.dart'
    as _i8;
import '../../features/sign_up/data/datasource/sign_up_remote_datasource.dart'
    as _i24;
import '../../features/sign_up/data/repository/sign_up_repository_impl.dart'
    as _i26;
import '../../features/sign_up/domain/repository/sign_up_repository.dart'
    as _i25;
import '../../features/sign_up/domain/usecases/continue_as_guest_usecase.dart'
    as _i36;
import '../../features/sign_up/domain/usecases/sign_up_usecase.dart' as _i27;
import '../../features/sign_up/presentation/bloc/sign_up_bloc.dart' as _i41;
import '../../features/splash/data/datasource/splash_local_datasource.dart'
    as _i9;
import '../../features/splash/data/repository/splash_repository_impl.dart'
    as _i43;
import '../../features/splash/domain/repository/splash_repository.dart' as _i42;
import '../../features/splash/domain/usecases/check_user_logged_id.dart'
    as _i46;
import '../../features/splash/presentation/bloc/splash_bloc.dart' as _i47;
import '../data/models/base_local_data_source.dart' as _i10;
import '../data/models/base_remote_datasource.dart' as _i12;
import '../data/repository/base_repository.dart' as _i11;
import '../domain/usecases/get_user_info_usecase.dart' as _i38;
import '../domain/usecases/logout.dart' as _i14;
import '../domain/usecases/save_user_info_usecase.dart' as _i19;
import '../network/network_info.dart' as _i5;
import '../util/validator/input_validators.dart' as _i3;
import 'register_module.dart' as _i48;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.InputValidators>(() => registerModule.inputValidators);
  gh.lazySingleton<_i4.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i5.NetworkInfo>(
      () => _i5.NetworkInfoImpl(gh<_i4.InternetConnectionChecker>()));
  await gh.lazySingletonAsync<_i6.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i7.SignInLocalDataSource>(() =>
      _i7.SignInLocalDataSourceImpl(
          sharedPreferences: gh<_i6.SharedPreferences>()));
  gh.lazySingleton<_i8.SignUpLocalDataSource>(() =>
      _i8.SignUpLocalDataSourceImpl(
          sharedPreferences: gh<_i6.SharedPreferences>()));
  gh.lazySingleton<_i9.SplashLocalDataSource>(() =>
      _i9.SplashLocalDataSourceImpl(
          sharedPreferences: gh<_i6.SharedPreferences>()));
  gh.lazySingleton<_i10.BaseLocalDataSource>(() => _i10.BaseLocalDataSourceImpl(
      sharedPreferences: gh<_i6.SharedPreferences>()));
  gh.lazySingleton<_i11.BaseRepository>(() => _i11.BaseRepositoryImpl(
        baseLocalDataSource: gh<_i10.BaseLocalDataSource>(),
        networkInfo: gh<_i5.NetworkInfo>(),
        baseRemoteDataSource: gh<_i12.BaseRemoteDataSource>(),
      ));
  gh.lazySingleton<_i13.Dio>(
      () => registerModule.dio(gh<_i6.SharedPreferences>()));
  gh.lazySingleton<_i14.LogoutUseCase>(
      () => _i14.LogoutUseCase(gh<_i11.BaseRepository>()));
  gh.lazySingleton<_i15.MainPageLocalDataSource>(() =>
      _i15.MainPageLocalDataSourceImpl(
          sharedPreferences: gh<_i6.SharedPreferences>()));
  gh.lazySingleton<_i16.MainPageRemoteDataSource>(
      () => _i16.MainPageRemoteDataSourceImpl(dio: gh<_i13.Dio>()));
  gh.lazySingleton<_i17.MainPageRepository>(() => _i18.MainPageRepositoryImpl(
        dealerMainRemoteDataSource: gh<_i16.MainPageRemoteDataSource>(),
        dealerMainLocalDataSource: gh<_i15.MainPageLocalDataSource>(),
        networkInfo: gh<_i5.NetworkInfo>(),
      ));
  gh.lazySingleton<_i19.SaveUserInfoUseCase>(
      () => _i19.SaveUserInfoUseCase(gh<_i11.BaseRepository>()));
  gh.lazySingleton<_i20.SignInRemoteDataSource>(
      () => _i20.SignInRemoteDataSourceImpl(dio: gh<_i13.Dio>()));
  gh.lazySingleton<_i21.SignInRepository>(() => _i22.DealerSignInRepositoryImpl(
        signInRemoteDataSource: gh<_i20.SignInRemoteDataSource>(),
        signInLocalDataSource: gh<_i7.SignInLocalDataSource>(),
        networkInfo: gh<_i5.NetworkInfo>(),
      ));
  gh.lazySingleton<_i23.SignInUseCase>(
      () => _i23.SignInUseCase(gh<_i21.SignInRepository>()));
  gh.lazySingleton<_i24.SignUpRemoteDataSource>(
      () => _i24.SignUpRemoteDataSourceImpl(dio: gh<_i13.Dio>()));
  gh.lazySingleton<_i25.SignUpRepository>(() => _i26.SignUpRepositoryImpl(
        signUpRemoteDataSource: gh<_i24.SignUpRemoteDataSource>(),
        signUpLocalDataSource: gh<_i8.SignUpLocalDataSource>(),
        networkInfo: gh<_i5.NetworkInfo>(),
      ));
  gh.lazySingleton<_i27.SignUpUseCase>(
      () => _i27.SignUpUseCase(gh<_i25.SignUpRepository>()));
  gh.lazySingleton<_i28.AddNewBeneficiaryRemoteDataSource>(
      () => _i28.AddNewBeneficiaryRemoteDataSourceImpl(dio: gh<_i13.Dio>()));
  gh.lazySingleton<_i29.AddNewBeneficiaryRepository>(
      () => _i30.AddNewBeneficiaryRepositoryImpl(
            addNewBeneficiaryRemoteDataSource:
                gh<_i28.AddNewBeneficiaryRemoteDataSource>(),
            networkInfo: gh<_i5.NetworkInfo>(),
            baseLocalDataSource: gh<_i10.BaseLocalDataSource>(),
          ));
  gh.lazySingleton<_i31.AddNewBeneficiaryUseCase>(() =>
      _i31.AddNewBeneficiaryUseCase(gh<_i29.AddNewBeneficiaryRepository>()));
  gh.lazySingleton<_i12.BaseRemoteDataSource>(
      () => _i12.BaseRemoteDataSourceImpl(dio: gh<_i13.Dio>()));
  gh.lazySingleton<_i32.BeneficiaryTopUpRemoteDataSource>(
      () => _i32.BeneficiaryTopUpRemoteDataSourceImpl(dio: gh<_i13.Dio>()));
  gh.lazySingleton<_i33.BeneficiaryTopUpRepository>(
      () => _i34.BeneficiaryTopUpRepositoryImpl(
            addNewBeneficiaryRemoteDataSource:
                gh<_i32.BeneficiaryTopUpRemoteDataSource>(),
            networkInfo: gh<_i5.NetworkInfo>(),
            baseLocalDataSource: gh<_i10.BaseLocalDataSource>(),
          ));
  gh.lazySingleton<_i35.BeneficiaryTopUpUseCase>(() =>
      _i35.BeneficiaryTopUpUseCase(gh<_i33.BeneficiaryTopUpRepository>()));
  gh.lazySingleton<_i36.ContinueAsGuestUseCase>(
      () => _i36.ContinueAsGuestUseCase(gh<_i25.SignUpRepository>()));
  gh.lazySingleton<_i37.GetBeneficiariesUseCase>(
      () => _i37.GetBeneficiariesUseCase(gh<_i17.MainPageRepository>()));
  gh.lazySingleton<_i38.GetUserInfoUseCase>(
      () => _i38.GetUserInfoUseCase(gh<_i21.SignInRepository>()));
  gh.factory<_i39.MainPageBloc>(() => _i39.MainPageBloc(
        gh<_i37.GetBeneficiariesUseCase>(),
        gh<_i38.GetUserInfoUseCase>(),
      ));
  gh.factory<_i40.SignInBloc>(() => _i40.SignInBloc(
        gh<_i23.SignInUseCase>(),
        gh<_i19.SaveUserInfoUseCase>(),
        gh<_i3.InputValidators>(),
      ));
  gh.factory<_i41.SignUpBloc>(() => _i41.SignUpBloc(
        signUpUseCase: gh<_i27.SignUpUseCase>(),
        saveUserInfoUseCase: gh<_i19.SaveUserInfoUseCase>(),
        continueAsGuestUseCase: gh<_i36.ContinueAsGuestUseCase>(),
        inputValidators: gh<_i3.InputValidators>(),
      ));
  gh.lazySingleton<_i42.SplashRepository>(() => _i43.SplashRepositoryImpl(
        splashLocalDataSource: gh<_i9.SplashLocalDataSource>(),
        networkInfo: gh<_i5.NetworkInfo>(),
        baseRemoteDataSource: gh<_i12.BaseRemoteDataSource>(),
      ));
  gh.factory<_i44.AddNewBeneficiaryBloc>(() => _i44.AddNewBeneficiaryBloc(
        addNewBeneficiaryUseCase: gh<_i31.AddNewBeneficiaryUseCase>(),
        inputValidators: gh<_i3.InputValidators>(),
      ));
  gh.factory<_i45.BeneficiaryTopUpBloc>(() => _i45.BeneficiaryTopUpBloc(
        beneficiaryTopUpUseCase: gh<_i35.BeneficiaryTopUpUseCase>(),
        inputValidators: gh<_i3.InputValidators>(),
      ));
  gh.lazySingleton<_i46.CheckUserIsLoggedIn>(
      () => _i46.CheckUserIsLoggedIn(gh<_i42.SplashRepository>()));
  gh.factory<_i47.SplashBloc>(() =>
      _i47.SplashBloc(checkUserIsLoggedIn: gh<_i46.CheckUserIsLoggedIn>()));
  return getIt;
}

class _$RegisterModule extends _i48.RegisterModule {}
