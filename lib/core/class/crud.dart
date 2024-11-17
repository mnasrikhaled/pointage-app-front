import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_streaming.dart';
import 'package:pointageapp/core/class/statusrequest.dart';
import 'package:pointageapp/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);

        Map responsebody = jsonDecode(response.body);
        print("****************************************************");
        print(responsebody);
        return Right(responsebody);
        // } else {
        //   return const Left(StatusRequest.serverfailure);
        // }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverException);
    }
  }
}
