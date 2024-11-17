import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return "Le champ est Obligatoire * ";
  }
  if (type == "cin" && (val.length < min || val.length > max)) {
    return "Merci d'entrer 8 chiffres pour valider le CIN !";
  }
  if (val.length < min || val.length > max) {
    return "Merci d'entrer une valeur  compris entre  $min et $max \n  caractères !";
  }
  if (type == "prenom") {
    if (!GetUtils.isUsername(val) && GetUtils.isNum(val)) {
      return "Le champ Prénom doit contenir uniquement \n des lettres ! ";
    }
  }

  if (type == "nom") {
    if (!GetUtils.isUsername(val) && GetUtils.isNum(val)) {
      return "Le champ Nom doit contenir uniquement \n des lettres !";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return " Le champ Email non valide.\n Exemple : Etudiant/Enseignant@Azerty.Azerty !";
    }
  }

  if (type == "cin") {
    if (!GetUtils.isNum(val)) {
      return "CIN d'utilisateur non valide !";
    }
  }
}
