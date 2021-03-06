import "/constants/export.dart";

class AppError implements Exception {
  AppError({this.msg});
  String? msg;
}

class Response {
  Response({this.code, this.data, this.text, this.next, this.previous});
  final int? code;
  final dynamic data;
  final String? text;
  final String? next;
  final String? previous;

  bool get success => code == 200;
  AppError? get error => !success ? AppError(msg: text) : null;
}

class Request {
  Request({this.headers=const {}, this.query=const {}, this.body=const {}});

  Map<String, String> headers;
  Map<String, dynamic> query;
  Map<String, dynamic> body;

  String get queryString => Uri(queryParameters: query).query;

  Request update({RequestDataType? type, dynamic data=const {}}) {
    switch (type) {
      case RequestDataType.headers:
        headers.addAll(data);
        break;
      case RequestDataType.query:
        query.addAll(data);
        break;
      case RequestDataType.body:
        body.addAll(data);
        break;
      default:
        query = {...query, ...data};
        break;
    }
    return this;
  }

  Request clear({RequestDataType? type}) {
    switch (type) {
      case RequestDataType.headers:
        headers = {};
        break;
      case RequestDataType.query:
        query = {};
        break;
      case RequestDataType.body:
        body = {};
        break;
      default:
        flush;
        break;
    }
    return this;
  }
  
  void flush() {
    headers = {};
    query = {};
    body = {};
  }
}