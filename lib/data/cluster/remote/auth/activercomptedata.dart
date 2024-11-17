import 'package:pointageapp/core/class/crud.dart';
import 'package:pointageapp/linkapi.dart';

class ActiverCompteData {
  Crud crud;
  ActiverCompteData(this.crud);

  postData(String prenom, String nom, String email, String cin) async {
    var response = await crud.postData(AppLink.activerCompteData, {
      "prenom": prenom,
      "nom": nom,
      "email": email,
      "cin": cin,
    });
    return response.fold((l) => l, (r) => r);
  }
}
