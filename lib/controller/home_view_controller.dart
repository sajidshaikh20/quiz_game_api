import 'package:get/get.dart';
import 'package:quiz_game_api/model/quiz_data.dart';
import 'package:quiz_game_api/services/api_services.dart';

class HomeViewController extends GetxController {
  var isLoding = true.obs;
  Getquiz? result;

  @override
  void onInit() {
    apicall();
    super.onInit();
  }

  apicall() async {
    isLoding(true);
    result = await ApiServices.getapi();
    isLoding(false);
  }
}
