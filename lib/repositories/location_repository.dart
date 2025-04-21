import 'package:dio/dio.dart';
import 'package:flutter_map_search_app/models/location.dart';

class LocationRepository {
  final Dio _dio = Dio();

  static const String clientId = 'SvdpAv14DxToe1HCzwo1'; // 네이버 API 클라이언트 아이디
  static const String clientSecret = 'UXb8ohRQuc'; // 네이버 API 시크릿

  Future<List<Location>> searchLocations(String query) async {
    try {
      final response = await _dio.get(
        'https://openapi.naver.com/v1/search/local.json',
        queryParameters: {'query': query, 'display': 5},
        options: Options(
          headers: {
            'X-Naver-Client-Id': clientId,
            'X-Naver-Client-Secret': clientSecret,
          },
        ),
      );

      final List<dynamic> items = response.data['items'];
      return items.map((item) => Location.fromJson(item)).toList();
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }
}
