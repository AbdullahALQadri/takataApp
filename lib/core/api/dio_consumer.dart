// import 'dart:convert';
// import 'dart:io';
// import 'package:dio/adapter.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:tam/core/api/api_consumer.dart';
// import 'package:tam/core/api/app_interceptors.dart';
// import 'package:tam/core/api/end_points.dart';
// import 'package:tam/core/api/status_code.dart';
// import 'package:tam/core/error/exceptions.dart';
// import 'package:tam/core/utils/storage/shared_preferences.dart';
// import 'package:tam/injection_container.dart' as di;
//
// class DioConsumer implements ApiConsumer {
//   final Dio client;
//
//   DioConsumer({required this.client}) {
//     (client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//         (HttpClient client) {
//       client.badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//       return client;
//     };
//
//     client.options
//       ..baseUrl = Endpoints.baseUrl
//       ..responseType = ResponseType.plain
//       ..followRedirects = false
//       ..validateStatus = (status) {
//         return status! < StatusCode.internalServerError;
//       };
//     client.interceptors.add(di.sl<AppIntercepters>());
//     if (kDebugMode) {
//       client.interceptors.add(di.sl<LogInterceptor>());
//     }
//   }
//
//   @override
//   Future get(String path, {Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response = await client.get(path,
//           queryParameters: queryParameters,
//           options: Options(
//             headers: {
//               "Accept": "application/json",
//               "Authorization": "Bearer ${SharedPrefController().token}"
//               // "Authorization": "Bearer ${SharedPrefController().token}"
//             },
//           ));
//       return _handleResponseAsJson(response);
//     } on DioError catch (error) {
//       _handleDioError(error);
//     }
//   }
//
//   @override
//   Future post(
//     String path, {
//     Map<String, dynamic>? body,
//     bool formDataIsEnabled = false,
//     Map<String, dynamic>? queryParameters,
//   }) async {
//     try {
//       final response = await client.post(path,
//           queryParameters: queryParameters,
//           options: Options(
//             headers: {
//               "Accept": "application/json",
//               "Authorization": "Bearer ${SharedPrefController().token}"
//             },
//           ),
//           data: formDataIsEnabled ? FormData.fromMap(body!) : body);
//       return _handleResponseAsJson(response);
//     } on DioError catch (error) {
//       _handleDioError(error);
//     }
//   }
//
//   @override
//   Future postWithImage(
//     String path, {
//     Map<String, dynamic>? body,
//     bool formDataIsEnabled = true,
//     Map<String, dynamic>? queryParameters,
//     dynamic params,
//   }) async {
//     try {
//       if (params.image != null) {
//         fileName = params.image.path.split('/').last;
//       }
//       // String fileName = params.image.path.split('/').last;
//       FormData formData = FormData.fromMap({
//         "image":
//             await MultipartFile.fromFile(params.image.path, filename: fileName),
//         "phone": params.phone,
//         "address": params.address,
//         "twitter": params.twitter,
//       });
//       final response = await client.post(path,
//           queryParameters: queryParameters,
//           options: Options(
//             headers: {
//               "Accept": "application/json",
//               "Authorization": "Bearer ${SharedPrefController().token}"
//             },
//           ),
//           data: formData);
//       return _handleResponseAsJson(response);
//     } on DioError catch (error) {
//       _handleDioError(error);
//     }
//   }
//
//   @override
//   Future postRegister(
//     String path, {
//     Map<String, dynamic>? body,
//     bool formDataIsEnabled = true,
//     Map<String, dynamic>? queryParameters,
//     dynamic params,
//   }) async {
//     try {
//       // if (params.image != null) {
//       //   fileName = params.image.path.split('/').last;
//       // }
//       if (params.image != null && params.image.path.isNotEmpty) {
//         fileName = params.image.path.split('/').last;
//       } else {
//        fileName = null;
//       }
//       // fileName = params.image.path.split('/').last;
//       MultipartFile? imageFile;
//       FormData formData = FormData.fromMap({
//         "email": params.email,
//         "password": params.password,
//         "name": params.name,
//         "fcm_token": "testtoken",
//         "phone": params.phone,
//         // "image":
//         //     await MultipartFile.fromFile(params.image.path, filename: fileName),
//         "image":params.image != null && params.image.path.isNotEmpty? imageFile = await MultipartFile.fromFile(params.image.path, filename: fileName) : null,
//       });
//       final response = await client.post(path,
//           queryParameters: queryParameters,
//           options: Options(
//             headers: {
//               "Accept": "application/json",
//               "Authorization": "Bearer ${SharedPrefController().token}"
//             },
//           ),
//           data: formData);
//       return _handleResponseAsJson(response);
//     } on DioError catch (error) {
//       _handleDioError(error);
//     }
//   }
//
//   String? fileName;
//
//   @override
//   Future postCreateService(String path,
//       {Map<String, dynamic>? body,
//       Map<String, dynamic>? queryParameters,
//       params}) async {
//     try {
//       if (params.image != null) {
//         fileName = params.image.path.split('/').last;
//       }
//       FormData formData = FormData.fromMap({
//         "name": params.name,
//         "category_id": params.categoryId,
//         "subcategory_id": params.subCategoryId,
//         "year_production": params.yearProduction,
//         "spare_parts": params.spareParts,
//         "residential_unit": params.residentialUnit,
//         "region": params.region,
//         "polish_type": params.polishType,
//         "photography_type": params.photographyType,
//         "paper_type": params.paperType,
//         "delivery_area": params.deliveryArea,
//         "count_workers": params.countWorkers,
//         "count_videos": params.countVideos,
//         "count_photos": params.countPhotos,
//         "conditioning_type": params.conditioningType,
//         "car_type": params.carType,
//         "message": params.message,
//         "execution_time": params.executionTime,
//         "number_person": params.numberPerson,
//         "image": params.image != null
//             ? await MultipartFile.fromFile(params.image.path,
//                 filename: fileName)
//             : params.image,
//       });
//       final response = await client.post(path,
//           queryParameters: queryParameters,
//           options: Options(
//             headers: {
//               "Accept": "application/json",
//               "Authorization": "Bearer ${SharedPrefController().token}"
//             },
//           ),
//           data: formData);
//       return _handleResponseAsJson(response);
//     } on DioError catch (error) {
//       _handleDioError(error);
//     }
//   }
//
//   @override
//   Future put(String path,
//       {Map<String, dynamic>? body,
//       Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response =
//           await client.put(path, queryParameters: queryParameters, data: body);
//       return _handleResponseAsJson(response);
//     } on DioError catch (error) {
//       _handleDioError(error);
//     }
//   }
//
//   dynamic _handleResponseAsJson(Response<dynamic> response) {
//     final responseJson = jsonDecode(response.data.toString());
//     return responseJson;
//   }
//
//   dynamic _handleDioError(DioError error) {
//     switch (error.type) {
//       case DioErrorType.connectTimeout:
//       case DioErrorType.sendTimeout:
//       case DioErrorType.receiveTimeout:
//         throw const FetchDataException();
//       case DioErrorType.response:
//         switch (error.response?.statusCode) {
//           case StatusCode.badRequest:
//             throw const BadRequestException();
//           case StatusCode.unauthorized:
//           case StatusCode.forbidden:
//             throw const UnauthorizedException();
//           case StatusCode.notFound:
//             throw const NotFoundException();
//           case StatusCode.confilct:
//             throw const ConflictException();
//
//           case StatusCode.internalServerError:
//             throw const InternalServerErrorException();
//         }
//         break;
//       case DioErrorType.cancel:
//         break;
//       case DioErrorType.other:
//         throw const NoInternetConnectionException();
//     }
//   }
//
//   @override
//   Future delete(String path,
//       {Map<String, dynamic>? body,
//       Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response = await client.delete(path,
//           queryParameters: queryParameters,
//           options: Options(
//             headers: {
//               "Accept": "application/json",
//               "Authorization": "Bearer ${SharedPrefController().token}"
//             },
//           ),
//           data: body);
//       return _handleResponseAsJson(response);
//     } on DioError catch (error) {
//       _handleDioError(error);
//     }
//   }
// }
