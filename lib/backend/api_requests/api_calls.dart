import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FlashCardsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Flash Cards ',
      apiUrl:
          'https://us-east-1.aws.data.mongodb-api.com/app/pmpflash-ulmuz/endpoint/GetFlash',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic all(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class CreateNewUserCall {
  static Future<ApiCallResponse> call({
    int? cardID,
    String? userID = '',
    String? email = '',
  }) {
    final body = '''
{
  "userID": "${userID}",
"email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new user ',
      apiUrl:
          'https://us-east-1.aws.data.mongodb-api.com/app/pmpflash-ulmuz/endpoint/createnewuser',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
