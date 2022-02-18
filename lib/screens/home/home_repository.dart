import 'package:sample_rest_api/model/api_response_model.dart';
import 'package:sample_rest_api/model/networking_response.dart';
import 'package:sample_rest_api/repo/network_repo/NetworkRepo.dart';

class HomeScreenRepository {
  /// ViewModel calls its Repository to getLatestStatsData
  /// The Repository will take care of getting the data from thr right source
  /// Only HomeRepository knows that it has to call NetworkRepo()
  /// ViewModel doesn't care if its coming from API or Offline Cache

  Future<NetworkingResponse> getLatestStatsData() {
    return NetworkRepo().getLatestDataFromAPI();
  }
}
