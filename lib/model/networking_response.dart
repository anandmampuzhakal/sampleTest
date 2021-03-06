import 'api_response_model.dart';

class NetworkingResponse {}

class NetworkingException extends NetworkingResponse {
  String message;
  NetworkingException(this.message);
}

class NetworkingResponseData extends NetworkingResponse {
  late APIResponseModel apiResponseModel;
  NetworkingResponseData(this.apiResponseModel);
}
