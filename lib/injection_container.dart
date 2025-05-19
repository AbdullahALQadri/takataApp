// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:tam/core/api/api_consumer.dart';
// import 'package:tam/core/api/dio_consumer.dart';
// import 'package:tam/core/network/network_info.dart';
// import 'package:tam/features/authentication/data/datasources/guest_remote_data_source.dart';
// import 'package:tam/features/authentication/data/datasources/re_login_remote_data_source.dart';
// import 'package:tam/features/authentication/data/datasources/register_remote_data_source.dart';
// import 'package:tam/features/authentication/data/datasources/user_check_code_remote_data_source.dart';
// import 'package:tam/features/authentication/data/datasources/user_recovery_password_remote_data_source.dart';
// import 'package:tam/features/authentication/data/repositories/guest_repository_impl.dart';
// import 'package:tam/features/authentication/data/repositories/re_login_repository_impl.dart';
// import 'package:tam/features/authentication/data/repositories/register_repository.dart';
// import 'package:tam/features/authentication/data/repositories/user_check_code_repository_impl.dart';
// import 'package:tam/features/authentication/data/repositories/user_login_repository_impl.dart';
// import 'package:tam/features/authentication/data/repositories/user_recovery_password_impl.dart';
// import 'package:tam/features/authentication/domain/repositories/guest_repository.dart';
// import 'package:tam/features/authentication/domain/repositories/re_login_repository.dart';
// import 'package:tam/features/authentication/domain/repositories/register_repository.dart';
// import 'package:tam/features/authentication/domain/repositories/user_check_code_repository.dart';
// import 'package:tam/features/authentication/domain/repositories/user_login_repository.dart';
// import 'package:tam/features/authentication/domain/repositories/user_recovery_password.dart';
// import 'package:tam/features/authentication/domain/usecases/guest_usecase.dart';
// import 'package:tam/features/authentication/domain/usecases/re_login_usecase.dart';
// import 'package:tam/features/authentication/domain/usecases/register_usecase.dart';
// import 'package:tam/features/authentication/domain/usecases/user_check_code_usecase.dart';
// import 'package:tam/features/authentication/domain/usecases/user_login_usecase.dart';
// import 'package:tam/features/authentication/domain/usecases/user_recovery_password_usecase.dart';
// import 'package:tam/features/authentication/presentation/cubit/guest_cubit.dart';
// import 'package:tam/features/authentication/presentation/cubit/re_login_cubit.dart';
// import 'package:tam/features/authentication/presentation/cubit/register_cubit.dart';
// import 'package:tam/features/authentication/presentation/cubit/user_check_code_cubit.dart';
// import 'package:tam/features/authentication/presentation/cubit/user_login_cubit.dart';
// import 'package:tam/features/authentication/presentation/cubit/user_recovery_password_cubit.dart';
// import 'package:tam/features/freelancer/data/datasources/all_orders_remote_data_source.dart';
// import 'package:tam/features/freelancer/data/datasources/apply_service_remote_data_source.dart';
// import 'package:tam/features/freelancer/data/datasources/contact_us_remote_data_source.dart';
// import 'package:tam/features/freelancer/data/datasources/delete_account_remote_data_source.dart';
// import 'package:tam/features/freelancer/data/datasources/limit_details_remote_data_source.dart';
// import 'package:tam/features/freelancer/data/datasources/orders_details_remote_data_source.dart';
// import 'package:tam/features/freelancer/data/datasources/sliders_remote_data_source.dart';
// import 'package:tam/features/freelancer/data/repositories/all_orders_impl.dart';
// import 'package:tam/features/freelancer/data/repositories/apply_service_repository_impl.dart';
// import 'package:tam/features/freelancer/data/repositories/contact_us_repository_impl.dart';
// import 'package:tam/features/freelancer/data/repositories/delete_account_repository_impl.dart';
// import 'package:tam/features/freelancer/data/repositories/limit_details_repository_impl.dart';
// import 'package:tam/features/freelancer/data/repositories/oders_details_repository_impl.dart';
// import 'package:tam/features/freelancer/data/repositories/sliders_repository_impl.dart';
// import 'package:tam/features/freelancer/domain/repositories/all_orders_repository.dart';
// import 'package:tam/features/freelancer/domain/repositories/apply_service_repository.dart';
// import 'package:tam/features/freelancer/domain/repositories/contact_us_repositroy.dart';
// import 'package:tam/features/freelancer/domain/repositories/delete_account_repository.dart';
// import 'package:tam/features/freelancer/domain/repositories/limit_details_repository.dart';
// import 'package:tam/features/freelancer/domain/repositories/orders_details_repository.dart';
// import 'package:tam/features/freelancer/domain/repositories/sliders_repository.dart';
// import 'package:tam/features/freelancer/domain/usecases/all_orders_usecase.dart';
// import 'package:tam/features/freelancer/domain/usecases/all_projects_usecase.dart';
// import 'package:tam/features/freelancer/domain/usecases/apply_service_usecase.dart';
// import 'package:tam/features/freelancer/domain/usecases/contact_us_usecase.dart';
// import 'package:tam/features/freelancer/domain/usecases/delete_account_usecase.dart';
// import 'package:tam/features/freelancer/domain/usecases/limit_details_usecase.dart';
// import 'package:tam/features/freelancer/domain/usecases/orders_details_usercase.dart';
// import 'package:tam/features/freelancer/domain/usecases/sliders_usecase.dart';
// import 'package:tam/features/freelancer/presentation/cubit/all_orders_cubit.dart';
// import 'package:tam/features/freelancer/presentation/cubit/apply_service_cubit.dart';
// import 'package:tam/features/freelancer/presentation/cubit/contact_us_cubit.dart';
// import 'package:tam/features/freelancer/presentation/cubit/delete_account_cubit.dart';
// import 'package:tam/features/freelancer/presentation/cubit/limit_details_cubit.dart';
// import 'package:tam/features/freelancer/presentation/cubit/orders_details_cubit.dart';
// import 'package:tam/features/freelancer/presentation/cubit/sliders_cubit.dart';
// import 'package:tam/features/localizations/data/datasources/lang_locale_data_source.dart';
// import 'package:tam/features/localizations/data/repositories/lang_repository_impl.dart';
// import 'package:tam/features/localizations/domain/repositories/lang_repository.dart';
// import 'package:tam/features/localizations/domain/usecases/change_lang.dart';
// import 'package:tam/features/localizations/domain/usecases/get_saved_lang.dart';
// import 'package:tam/features/localizations/presentation/cubit/locale_cubit.dart';
// import 'package:tam/features/recruiter/data/datasources/accept_offers_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/all_categories_data_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/categories_details_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/ceate_service_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/delete_services_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/last_services_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/my_profile_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/my_services_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/notifications_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/search_data_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/services_details_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/sub_categories_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/datasources/update_profile_remote_data_source.dart';
// import 'package:tam/features/recruiter/data/repositories/accept_offers_repository_impl.dart';
// import 'package:tam/features/recruiter/data/repositories/all_categories_repository_impl.dart';
// import 'package:tam/features/recruiter/data/repositories/categories_details_repository_impl.dart';
// import 'package:tam/features/recruiter/data/repositories/create_services_repository_impl.dart';
// import 'package:tam/features/recruiter/data/repositories/delete_services_repository.dart';
// import 'package:tam/features/recruiter/data/repositories/last_services_repository_impl.dart';
// import 'package:tam/features/recruiter/data/repositories/my_profile_repository_impl.dart';
// import 'package:tam/features/recruiter/data/repositories/my_services_repository_impl.dart';
// import 'package:tam/features/recruiter/data/repositories/notifications_repository_impl.dart';
// import 'package:tam/features/recruiter/data/repositories/search_data_repository_impl.dart';
// import 'package:tam/features/recruiter/data/repositories/services_details_repository_impl.dart';
// import 'package:tam/features/recruiter/data/repositories/sub_categories_impl.dart';
// import 'package:tam/features/recruiter/data/repositories/update_profile_repository_impl.dart';
// import 'package:tam/features/recruiter/domain/repositories/accept_offers_repossitory.dart';
// import 'package:tam/features/recruiter/domain/repositories/all_categories_repository.dart';
// import 'package:tam/features/recruiter/domain/repositories/categories_details_repository.dart';
// import 'package:tam/features/recruiter/domain/repositories/create_services_repository.dart';
// import 'package:tam/features/recruiter/domain/repositories/delete_service_repository.dart';
// import 'package:tam/features/recruiter/domain/repositories/last_services_repository.dart';
// import 'package:tam/features/recruiter/domain/repositories/my_profile_repository.dart';
// import 'package:tam/features/recruiter/domain/repositories/my_services_repository.dart';
// import 'package:tam/features/recruiter/domain/repositories/notifications_repository.dart';
// import 'package:tam/features/recruiter/domain/repositories/search_data_repository.dart';
// import 'package:tam/features/recruiter/domain/repositories/services_details_repository.dart';
// import 'package:tam/features/recruiter/domain/repositories/sub_categories_repository.dart';
// import 'package:tam/features/recruiter/domain/repositories/update_profile_repository.dart';
// import 'package:tam/features/recruiter/domain/usecases/accept_offers_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/all_categories_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/categories_details_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/create_services_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/delete_service_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/last_services_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/my_profile_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/my_services_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/notifications_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/search_data_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/services_details_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/sub_categories_usecase.dart';
// import 'package:tam/features/recruiter/domain/usecases/update_profile_usecase.dart';
// import 'package:tam/features/recruiter/presentation/cubit/accept_offers_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/all_categories_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/categories_details_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/create_services_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/delete_services_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/last_services_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/my_profile_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/my_services_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/notifications_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/search_data_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/services_details_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/sub_categories_cubit.dart';
// import 'package:tam/features/recruiter/presentation/cubit/update_profile_cubit.dart';
// import 'core/api/app_interceptors.dart';
// import 'features/authentication/data/datasources/user_login_remote_data_source.dart';
// import 'features/freelancer/data/datasources/all_projects_data_remote_data_source.dart';
// import 'features/freelancer/data/datasources/limit_services_remote_data_source.dart';
// import 'features/freelancer/data/repositories/all_projects_repository_impl.dart';
// import 'features/freelancer/data/repositories/limit_services_repository_impl.dart';
// import 'features/freelancer/domain/repositories/all_projects_repository.dart';
// import 'features/freelancer/domain/repositories/limit_services.dart';
// import 'features/freelancer/domain/usecases/limit_services.dart';
// import 'features/freelancer/presentation/cubit/all_projects_cubit.dart';
// import 'features/freelancer/presentation/cubit/limit_services_cubit.dart';
//
// // final sl = GetIt.instance;
// final GetIt sl = GetIt.instance;
//
// // void init() async {
// init() async {
//   //! Features
//   // Blocs
//   sl.registerFactory(() => UserLoginCubit(userLoginUseCase: sl()));
//   sl.registerFactory(
//       () => UserRecoveryPasswordCubit(userRecoveryPasswordUseCase: sl()));
//   sl.registerFactory(() => UserCheckCodeCubit(userCheckCodeUseCase: sl()));
//   sl.registerFactory(() => ReLoginCubit(reLoginUseCase: sl()));
//   sl.registerFactory(() => RegisterCubit(registerUseCase: sl()));
//   sl.registerFactory(() => AllProjectsCubit(allProjectsUseCase: sl()));
//   sl.registerFactory(() => LimitServicesCubit(limitServicesUseCase: sl()));
//   sl.registerFactory(() => AllCategoriesCubit(allCategoriesUseCase: sl()));
//   sl.registerFactory(() => LastServicesCubit(lastServicesUseCase: sl()));
//   sl.registerFactory(() => ServicesDetailsCubit(servicesDetailsUseCase: sl()));
//   sl.registerFactory(() => MyServicesCubit(myServicesUseCase: sl()));
//   sl.registerFactory(
//       () => CategoriesDetailsCubit(categoriesDetailsUseCase: sl()));
//   sl.registerFactory(() => SubCategoriesCubit(subCategoriesUseCase: sl()));
//   sl.registerFactory(() => SlidersCubit(slidersUseCase: sl()));
//   sl.registerFactory(() => AllOrdersCubit(allOrdersUseCase: sl()));
//   sl.registerFactory(() => OrdersDetailsCubit(ordersDetailsUseCase: sl()));
//   sl.registerFactory(() => LimitDetailsCubit(limitDetailsUseCase: sl()));
//   sl.registerFactory(() => ApplyServiceCubit(applyServiceUseCase: sl()));
//   sl.registerFactory(() => ContactUsCubit(contactUsUseCase: sl()));
//   sl.registerFactory(() => NotificationsCubit(notificationsUseCase: sl()));
//   sl.registerFactory(() => AcceptOffersCubit(acceptOffersUseCase: sl()));
//   sl.registerFactory(() => MyProfileCubit(myProfileUseCase: sl()));
//   sl.registerFactory(() => UpdateProfileCubit(updateProfileUseCase: sl()));
//   sl.registerFactory(() => SearchDataCubit(searchDataUseCase: sl()));
//   sl.registerFactory(() => CreateServicesCubit(createServicesUseCase: sl()));
//   sl.registerFactory(() => DeleteServicesCubit(deleteServicesUseCase: sl()));
//   // sl.registerFactory(
//   //     () => LocaleCubit(getSavedLangUseCase: sl(), changeLangUseCase: sl()));
//   sl.registerFactory<LocaleCubit>(
//       () => LocaleCubit(changeLangUseCase: sl(), getSavedLangUseCase: sl()));
//   sl.registerFactory(() => DeleteAccountCubit(deleteAccountUseCase: sl()));
//   sl.registerFactory(() => GuestCubit(guestUseCase: sl()));
//
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//   // UseCases
//   sl.registerLazySingleton(() => UserLoginUseCase(userLoginRepository: sl()));
//   sl.registerLazySingleton(
//       () => UserRecoveryPasswordUseCase(userRecoveryPasswordRepository: sl()));
//   sl.registerLazySingleton(
//       () => UserCheckCodeUseCase(userCheckCodeRepository: sl()));
//
//   sl.registerLazySingleton(() => ReLoginUseCase(reLoginRepository: sl()));
//
//   sl.registerLazySingleton(() => RegisterUseCase(registerRepository: sl()));
//   sl.registerLazySingleton(
//       () => AllProjectsUseCase(allProjectsRepository: sl()));
//   sl.registerLazySingleton(
//       () => LimitServicesUseCase(limitServicesRepository: sl()));
//   sl.registerLazySingleton(
//       () => AllCategoriesUseCase(allCategoriesRepository: sl()));
//   sl.registerLazySingleton(
//       () => LastServicesUseCase(lastServicesRepository: sl()));
//   sl.registerLazySingleton(
//       () => ServicesDetailsUseCase(servicesDetailsRepository: sl()));
//   sl.registerLazySingleton(() => MyServicesUseCase(myServicesRepository: sl()));
//   sl.registerLazySingleton(
//       () => CategoriesDetailsUseCase(categoriesDetailsRepository: sl()));
//
//   sl.registerLazySingleton(
//       () => SubCategoriesUseCase(subCategoriesRepository: sl()));
//   sl.registerLazySingleton(() => SlidersUseCase(slidersRepository: sl()));
//   sl.registerLazySingleton(() => AllOrdersUseCase(allOrdersRepository: sl()));
//   sl.registerLazySingleton(
//       () => OrdersDetailsUseCase(ordersDetailsRepository: sl()));
//   sl.registerLazySingleton(
//       () => LimitDetailsUseCase(limitDetailsRepository: sl()));
//   sl.registerLazySingleton(
//       () => ApplyServiceUseCase(applyServiceRepository: sl()));
//   sl.registerLazySingleton(() => ContactUsUseCase(contactUsRepository: sl()));
//   sl.registerLazySingleton(
//       () => NotificationsUseCase(notificationsRepository: sl()));
//   sl.registerLazySingleton(
//       () => AcceptOffersUseCase(acceptOffersRepository: sl()));
//   sl.registerLazySingleton(() => MyProfileUseCase(myProfileRepository: sl()));
//   sl.registerLazySingleton(
//       () => UpdateProfileUseCase(updateProfileRepository: sl()));
//   sl.registerLazySingleton(() => SearchDataUseCase(searchDataRepository: sl()));
//   sl.registerLazySingleton(
//       () => CreateServicesUseCase(createServicesRepository: sl()));
//   sl.registerLazySingleton(
//       () => DeleteServicesUseCase(deleteServicesRepository: sl()));
//   // sl.registerLazySingleton(() => GetSavedLangUseCase(langRepository: sl()));
//   // sl.registerLazySingleton(() => ChangeLangUseCase(langRepository: sl()));
//   sl.registerLazySingleton<GetSavedLangUseCase>(
//       () => GetSavedLangUseCase(langRepository: sl()));
//   sl.registerLazySingleton<ChangeLangUseCase>(
//       () => ChangeLangUseCase(langRepository: sl()));
//   sl.registerLazySingleton(
//       () => DeleteAccountUseCase(deleteAccountRepository: sl()));
//   sl.registerLazySingleton(() => GuestUseCase(guestRepository: sl()));
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//   // Repository
//   sl.registerLazySingleton<UserLoginRepository>(() => UserLoginRepositoryImpl(
//         networkInfo: sl(),
//         userLoginRemoteDataSource: sl(),
//       ));
//   sl.registerLazySingleton<UserRecoveryPasswordRepository>(
//       () => UserRecoveryPasswordRepositoryImpl(
//             networkInfo: sl(),
//             userRecoveryPasswordRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<UserCheckCodeRepository>(
//       () => UserCheckCodeRepositoryImpl(
//             networkInfo: sl(),
//             userCheckCodeRemoteDataSource: sl(),
//           ));
//
//   sl.registerLazySingleton<ReLoginRepository>(() => ReLoginRepositoryImpl(
//         networkInfo: sl(),
//         reLoginRemoteDataSource: sl(),
//       ));
//   sl.registerLazySingleton<RegisterRepository>(() => RegisterRepositoryImpl(
//         networkInfo: sl(),
//         registerRemoteDataSource: sl(),
//       ));
//
//   sl.registerLazySingleton<AllProjectsRepository>(
//       () => AllProjectsRepositoryImpl(
//             networkInfo: sl(),
//             allProjectsRemoteDataSource: sl(),
//           ));
//
//   sl.registerLazySingleton<LimitServicesRepository>(
//       () => LimitServicesRepositoryImpl(
//             networkInfo: sl(),
//             limitServicesRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<AllCategoriesRepository>(
//       () => AllCategoriesRepositoryImpl(
//             networkInfo: sl(),
//             allCategoriesRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<LastServicesRepository>(
//       () => LastServicesRepositoryImpl(
//             networkInfo: sl(),
//             lastServicesRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<ServicesDetailsRepository>(
//       () => ServicesDetailsRepositoryImpl(
//             networkInfo: sl(),
//             servicesDetailsRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<MyServicesRepository>(() => MyServicesRepositoryImpl(
//         networkInfo: sl(),
//         myServicesRemoteDataSource: sl(),
//       ));
//   sl.registerLazySingleton<CategoriesDetailsRepository>(
//       () => CategoriesDetailsRepositoryImpl(
//             networkInfo: sl(),
//             categoriesDetailsRemoteDataSource: sl(),
//           ));
//
//   sl.registerLazySingleton<SubCategoriesRepository>(
//       () => SubCategoriesRepositoryImpl(
//             networkInfo: sl(),
//             subCategoriesRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<SlidersRepository>(() => SlidersRepositoryImpl(
//         networkInfo: sl(),
//         slidersRemoteDataSource: sl(),
//       ));
//   sl.registerLazySingleton<AllOrdersRepository>(() => AllOrdersRepositoryImpl(
//         networkInfo: sl(),
//         allOrdersRemoteDataSource: sl(),
//       ));
//   sl.registerLazySingleton<OrdersDetailsRepository>(
//       () => OrdersDetailsRepositoryImpl(
//             networkInfo: sl(),
//             ordersDetailsRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<LimitDetailsRepository>(
//       () => LimitDetailsRepositoryImpl(
//             networkInfo: sl(),
//             limitDetailsRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<ApplyServiceRepository>(
//       () => ApplyServiceRepositoryImpl(
//             networkInfo: sl(),
//             applyServiceRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<ContactUsRepository>(() => ContactUsRepositoryImpl(
//         networkInfo: sl(),
//         contactUsRemoteDataSource: sl(),
//       ));
//   sl.registerLazySingleton<NotificationsRepository>(
//       () => NotificationsRepositoryImpl(
//             networkInfo: sl(),
//             notificationsRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<AcceptOffersRepository>(
//       () => AcceptOffersRepositoryImpl(
//             networkInfo: sl(),
//             acceptOffersRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<MyProfileRepository>(() => MyProfileRepositoryImpl(
//         networkInfo: sl(),
//         myProfileRemoteDataSource: sl(),
//       ));
//   sl.registerLazySingleton<UpdateProfileRepository>(
//       () => UpdateProfileRepositoryImpl(
//             networkInfo: sl(),
//             updateProfileRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<SearchDataRepository>(() => SearchDataRepositoryImpl(
//         networkInfo: sl(),
//         searchDataRemoteDataSource: sl(),
//       ));
//   sl.registerLazySingleton<CreateServicesRepository>(
//       () => CreateServicesRepositoryImpl(
//             networkInfo: sl(),
//             createServicesRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<DeleteServicesRepository>(
//       () => DeleteServicesRepositoryImpl(
//             networkInfo: sl(),
//             deleteServicesRemoteDataSource: sl(),
//           ));
//
//   // sl.registerLazySingleton<LangRepository>(() => LangRepositoryImpl(
//   //       langLocaleDataSource: sl(),
//   //     ));
//
//   sl.registerLazySingleton<LangRepository>(
//       () => LangRepositoryImpl(langLocaleDataSource: sl()));
//
//   sl.registerLazySingleton<DeleteAccountRepository>(
//       () => DeleteAccountRepositoryImpl(
//             networkInfo: sl(),
//             deleteAccountRemoteDataSource: sl(),
//           ));
//   sl.registerLazySingleton<GuestRepository>(() => GuestRepositoryImpl(
//         networkInfo: sl(),
//         guestRemoteDataSource: sl(),
//       ));
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//   // Data Source
//   sl.registerLazySingleton<UserLoginRemoteDataSource>(
//       () => UserLoginRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<UserRecoveryPasswordRemoteDataSource>(
//       () => UserRecoveryPasswordRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<UserCheckCodeRemoteDataSource>(
//       () => UserCheckCodeRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<ReLoginRemoteDataSource>(
//       () => ReLoginRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<RegisterRemoteDataSource>(
//       () => RegisterRemoteDataSourceImpl(apiConsumer: sl()));
//
//   sl.registerLazySingleton<AllProjectsRemoteDataSource>(
//       () => AllProjectsRemoteDataSourceImpl(apiConsumer: sl()));
//
//   sl.registerLazySingleton<LimitServicesRemoteDataSource>(
//       () => LimitServicesRemoteDataSourceImpl(apiConsumer: sl()));
//
//   sl.registerLazySingleton<AllCategoriesRemoteDataSource>(
//       () => AllCategoriesRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<LastServicesRemoteDataSource>(
//       () => LastServicesRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<ServicesDetailsRemoteDataSource>(
//       () => ServicesDetailsRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<MyServicesRemoteDataSource>(
//       () => MyServicesRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<CategoriesDetailsRemoteDataSource>(
//       () => CategoriesDetailsRemoteDataSourceImpl(apiConsumer: sl()));
//
//   sl.registerLazySingleton<SubCategoriesRemoteDataSource>(
//       () => SubCategoriesRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<SlidersRemoteDataSource>(
//       () => SlidersRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<AllOrdersRemoteDataSource>(
//       () => AllOrdersRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<OrdersDetailsRemoteDataSource>(
//       () => OrdersDetailsRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<LimitDetailsRemoteDataSource>(
//       () => LimitDetailsRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<ApplyServiceRemoteDataSource>(
//       () => ApplyServiceRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<ContactUsRemoteDataSource>(
//       () => ContactUsRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<NotificationsRemoteDataSource>(
//       () => NotificationsRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<AcceptOffersRemoteDataSource>(
//       () => AcceptOffersRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<MyProfileRemoteDataSource>(
//       () => MyProfileRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<UpdateProfileRemoteDataSource>(
//       () => UpdateProfileRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<SearchDataRemoteDataSource>(
//       () => SearchDataRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<CreateServicesRemoteDataSource>(
//       () => CreateServicesRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<DeleteServicesRemoteDataSource>(
//       () => DeleteServicesRemoteDataSourceImpl(apiConsumer: sl()));
//   // sl.registerLazySingleton<LangLocaleDataSourceImpl>(
//   //     () => LangLocaleDataSourceImpl(sharedPreferences: sl()));
//   sl.registerLazySingleton<LangLocaleDataSource>(
//       () => LangLocaleDataSourceImpl(sharedPreferences: sl()));
//   sl.registerLazySingleton<DeleteAccountRemoteDataSource>(
//       () => DeleteAccountRemoteDataSourceImpl(apiConsumer: sl()));
//   sl.registerLazySingleton<GuestRemoteDataSource>(
//       () => GuestRemoteDataSourceImpl(apiConsumer: sl()));
//
//   //! Core
//   final sharedPreferences = await SharedPreferences.getInstance();
//   sl.registerLazySingleton(() => sharedPreferences);
//   sl.registerLazySingleton<NetworkInfo>(
//       () => NetworkInfoImpl(connectionChecker: sl()));
//   sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl()));
//   //! External
//   sl.registerLazySingleton(() => AppIntercepters());
//   sl.registerLazySingleton(() => LogInterceptor(
//         request: true,
//         requestBody: true,
//         requestHeader: true,
//         responseBody: true,
//         responseHeader: true,
//         error: true,
//       ));
//   sl.registerLazySingleton(() => InternetConnectionChecker());
//   sl.registerLazySingleton(() => Dio());
// }
