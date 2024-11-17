import 'package:pointageapp/core/class/crud.dart';
import 'package:pointageapp/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  postData(String email, String cin) async {
    var response = await crud.postData(AppLink.loginData, {
      "email": email,
      "cin": cin,
    });
    return response.fold((l) => l, (r) => r);
  }
}
