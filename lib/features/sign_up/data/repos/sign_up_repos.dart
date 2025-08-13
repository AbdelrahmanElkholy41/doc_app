import 'package:flutter_complete_project/core/networking/api_error_handler.dart';
import 'package:flutter_complete_project/core/networking/api_result.dart';
import 'package:flutter_complete_project/core/networking/api_service.dart';

import '../modal/sign_up_request_body.dart';
import '../modal/sign_up_response.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signUp(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}