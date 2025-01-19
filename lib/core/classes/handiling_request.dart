import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shop/core/functions/status_request.dart';


class HandilingRequest {

  Future<Either<StatusRequest , Map>> postData (String uri , Map data , Map<String , String> headerss)async{
       try {
          var response = await http.post(Uri.parse(uri) , body: data , headers: headerss);
          if (response.statusCode ==200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          print("======================================================$responseBody" );
            return Right(responseBody);
          } else {
            return const Left(StatusRequest.serverExeption);
          }
        } catch (e) {
          return const Left(StatusRequest.offlineFaluire);
        }
     }



     Future<Either<StatusRequest , Map>> getData (String uri , Map<String , String> headerssdd)async{
       try {
          var response = await http.get(Uri.parse(uri) , headers: headerssdd );
          if (response.statusCode ==200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          print("======================================================$responseBody" );
            return Right(responseBody);
          } else {
            return const Left(StatusRequest.serverExeption);
          }
        } catch (e) {
          return const Left(StatusRequest.offlineFaluire);
        }
     }
}