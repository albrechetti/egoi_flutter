library egoi_flutter;

import 'package:dio/dio.dart';

class Egoi {
  String apiKey;
  Egoi({
    required this.apiKey,
  });

  final Dio _dio = Dio();

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

  Future getContact({required int listID, required String contactID}) async {
    try {
      var response = await _dio.get(
        'https://api.egoiapp.com/lists/$listID/contacts/$contactID',
        options: Options(
          headers: {"Apikey": apiKey, "Content-Type": "application/json"},
        ),
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }

  Future updateAllContacts({required int listID}) async {
    try {
      var response = await _dio.post(
        'https://api.egoiapp.com/lists/$listID/contacts/actions/update',
        options: Options(
          headers: {"Apikey": apiKey, "Content-Type": "application/json"},
        ),
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }

  Future updateContact({required int listID, required String contactID}) async {
    try {
      var response = await _dio.post(
        'https://api.egoiapp.com/lists/$listID/contacts/$contactID',
        options: Options(
          headers: {"Apikey": apiKey, "Content-Type": "application/json"},
        ),
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }
}

