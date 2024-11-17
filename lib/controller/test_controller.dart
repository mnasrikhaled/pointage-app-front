import 'package:get/get.dart';
import 'package:pointageapp/core/class/crud.dart';
import 'package:pointageapp/core/class/statusrequest.dart';
import 'package:pointageapp/data/cluster/remote/test_data.dart';

import '../core/functions/handlingdata.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];
  late StatusRequest statusRequest;
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    //
    print("controller$response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest == StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
