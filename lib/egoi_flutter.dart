library egoi_flutter;


import 'package:dio/dio.dart';

class Egoi {
  String apiKey;
  Egoi({
    required this.apiKey,
  });
  final Dio _dio = Dio();
  //add a new contact in egoi list

  /*data exemple:
    var data = {
    "base": {
      "status": "active",
      "first_name": "John2",
      "last_name": "Doe2",
      "birth_date": "1975-01-10",
      "language": "en",
      "email": "example2@e-goi.com",
      "cellphone": "",
      "phone": "",
      "push_token_android": [],
      "push_token_ios": []
    }
  };
  */

  Future addContact({required data, required int listID}) async {
    try {
      var response = await _dio.post(
        'https://api.egoiapp.com/lists/$listID/contacts',
        data: data,
        options: Options(
          headers: {"Apikey": apiKey, "Content-Type": "application/json"},
        ),
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }

  //get a contact by id
  Future getContact({required int listID, required String contactID}) async {
    try {
      var response = await _dio.get(
        'https://api.egoiapp.com/lists/$listID/contacts/$contactID',
        options: Options(
          headers: {"Apikey": apiKey, "Content-Type": "application/json"},
        ),
      );
      return response.toString();
    } catch (e) {
      throw e.toString();
    }
  }
}
