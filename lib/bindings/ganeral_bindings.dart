import 'package:flutter_standard_ecommerce_app/utils/helpers/network_manager.dart';
import 'package:get/get.dart';


class GaneralBindings extends Bindings{
  @override
  void dependencies(){
    Get.put(NetworkManager());

  }
   }
