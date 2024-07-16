
import 'package:dio/dio.dart';

import 'api_service.dart';

class PostServcie extends BaseServcie {
  PostServcie({required super.dio});
  Future<Response> getPosts() async {
    response = await dio.get(baseUrl);
    return response;
  }
}