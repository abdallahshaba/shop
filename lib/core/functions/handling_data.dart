import 'package:shop/core/functions/status_request.dart';

handlingData(response) {
  if (response is StatusRequest) {
    if (response == StatusRequest.offlineFaluire) {
      return StatusRequest.offlineFaluire;
    } else {
      return StatusRequest.serverFaluire;
    }
  } else {
    return StatusRequest.success;
  }
}
