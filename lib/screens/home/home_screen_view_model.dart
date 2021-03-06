import 'package:flutter/cupertino.dart';
import 'package:sample_rest_api/model/networking_response.dart';
import 'package:sample_rest_api/screens/home/home_repository.dart';
import '../../model/api_response_model.dart';

class HomeScreenViewModel extends ChangeNotifier {
  HomeScreenViewModel mHomeScreenViewModel=  HomeScreenViewModel();

  late APIResponseModel apiResponseModel;
  String messageToShow = "";
  bool isLoading = false;

  void getDataFromAPI() async {
    /// Start showing the loader
    isLoading = true;
    notifyListeners();

    /// Wait for response
    NetworkingResponse networkingResponse =
        await HomeScreenRepository().getLatestStatsData();

    /// We check the type of response and update the required field
    if (networkingResponse is NetworkingResponseData) {
      /// Updating the APIResponseModel when success
      apiResponseModel = networkingResponse.apiResponseModel;
    } else if (networkingResponse is NetworkingException) {
      /// Updating the errorMessage when fails
      messageToShow = networkingResponse.message;
    }

    /// Stop the loader
    isLoading = false;
    notifyListeners();
  }
}
