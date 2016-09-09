
import 'dart:async';
import 'dart:convert';
import 'package:flutter/http.dart' as http;

import 'contact_data.dart';

class RamdonUserRepository implements ContactRepository{

  static const _kRamdonUserUrl = 'http://api.randomuser.me/?results=15';
  final JsonDecoder _decoder = new JsonDecoder();

  Future<List<Contact>> fetch(){
    return http.get(_kRamdonUserUrl)
        .then((http.Response response) {
          final String jsonBody = response.body;
          final statusCode = response.statusCode;

          if(statusCode < 200 || statusCode >= 300 || jsonBody == null) {
            throw new FetchDataException("Error while getting contacts [StatusCode:$statusCode, Error:${response.error}]");
          }

          final contactsContainer = _decoder.convert(jsonBody);
          final List contactItems  = contactsContainer['results'];

          return contactItems.map( (contactRaw) => new Contact.fromMap(contactRaw) )
                         .toList();
      });
  }

}

class FetchDataException implements Exception {
  String _message;

  FetchDataException(this._message);

  String toString() {
    return "Exception: $_message";
  }
}
