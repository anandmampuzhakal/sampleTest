import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sample_rest_api/model/api_response_model.dart';
import 'package:sample_rest_api/model/networking_response.dart';
import 'package:sample_rest_api/utils/constants.dart';

/// Network Repo will do the networking for you
/// And will also take care of parsing
/// and exception handling
/// will simply return you data model or the exception message

class NetworkRepo {
  /// Instead of returning ApiResponseModel
  /// We have created a parent class called NetworkingResponse
  /// Which takes care of Successful and Failed response
  /// So we either send a successful or failed response wrapped in NetworkingResponse

  Future<NetworkingResponse> getLatestDataFromAPI() async {
    try {
      var response = await http.get(Uri.parse(API_END_POINT_URL));
      var parsedJson = await json.decode(response.body);
      APIResponseModel apiResponseModel = APIResponseModel.fromJson(parsedJson);
      return NetworkingResponseData(apiResponseModel);
    } catch (exception) {
      return NetworkingException(exception.toString());
    }
  }
}
