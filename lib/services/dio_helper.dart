import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData(
      {required String url, Map<String, dynamic>? query, String? token}) async {
    if (token != null) dio.options.headers["Authorization"] = "Bearer $token";
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> getWithBody(
      {required String url, Map<String, dynamic>? query, String? token}) async {
    if (token != null) dio.options.headers["Authorization"] = "Bearer $token";
    return await dio.request(url,
        data: query,
        options: Options(method: "GET", contentType: "application/json"));
  }

  static Future<Response> postData(
      {required String url,
      required Map<String, dynamic> data,
      Map<String, dynamic>? query,
      String? token}) async {
    if (token != null) dio.options.headers["Authorization"] = "Bearer $token";
    return await dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> patchData(
      {required String url,
      required Map<String, dynamic> data,
      Map<String, dynamic>? query,
      String? token}) async {
    if (token != null) dio.options.headers["Authorization"] = "Bearer $token";
    return await dio.patch(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> putData(
      {required String url,
      required Map<String, dynamic> data,
      Map<String, dynamic>? query,
      String? token}) async {
    if (token != null) dio.options.headers["Authorization"] = "Bearer $token";
    return await dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> deleteData(
      {required String url,
      Map<String, dynamic>? data,
      Map<String, dynamic>? query,
      String? token}) async {
    if (token != null) dio.options.headers["Authorization"] = "Bearer $token";
    return await dio.delete(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
