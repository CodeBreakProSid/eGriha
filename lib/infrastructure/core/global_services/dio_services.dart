import 'package:dio/dio.dart';

import '../const/api_end_points.dart';

class DioServices {
  late Dio _dio;

  // Singleton pattern to ensure only one instance of Dio is used throughout the app
  static final DioServices _instance = DioServices._internal();

  factory DioServices() {
    return _instance;
  }

  DioServices._internal() {
    _dio = Dio(
      BaseOptions(
        //API Base url
        baseUrl: ApiEndPoints.TEST_BASE_URL,
        //30 secs for connection time out
        connectTimeout: const Duration(seconds: 60),
        //30 secs for receive response
        receiveTimeout: const Duration(seconds: 60),
        //30 secs for client request sending
        sendTimeout: const Duration(seconds: 60),
        followRedirects: false,
        validateStatus: (status) => status! < 500,
      ),
    );
  }

  Future<Response> get(
    String url, {
    final FormData? data,
    final Map<String, dynamic>? queryParameters,
    final String? accessToken,
  }) async {
    try {
      final authToken = accessToken ?? '';
      final response = await _dio.get(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: {
            'Authorization': authToken,
          },
        ),
      );
      return response;
    } catch (error) {
      throw Exception('Failed to perform GET request: $error');
    }
  }

  Future<Response> post(
    final String url, {
    final FormData? data,
    final Map<String, dynamic>? queryParameters,
    final String? accessToken,
  }) async {
    try {
      final authToken = accessToken ?? '';
      final response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: {
            'Authorization': authToken,
          },
        ),
      );
      return response;
    } catch (error) {
      throw Exception('Failed to perform POST request: $error');
    }
  }

  Future<Response> put(String url, dynamic data) async {
    try {
      final response = await _dio.put(url, data: data);
      return response;
    } catch (error) {
      throw Exception('Failed to perform PUT request: $error');
    }
  }

  Future<Response> delete(String url) async {
    try {
      final response = await _dio.delete(url);
      return response;
    } catch (error) {
      throw Exception('Failed to perform DELETE request: $error');
    }
  }

  Future<Response> patch(
    final String url, {
    final FormData? data,
    final Map<String, dynamic>? queryParameters,
    final String? accessToken,
  }) async {
    try {
      final authToken = accessToken ?? '';
      final response = await _dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: {
            'Authorization': authToken,
          },
        ),
      );
      return response;
    } catch (error) {
      throw Exception('Failed to perform POST request: $error');
    }
  }
}
