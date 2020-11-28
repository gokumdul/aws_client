// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name

import 'dart:convert';
import 'dart:typed_data';

import 'package:shared_aws_api/shared.dart' as _s;
import 'package:shared_aws_api/shared.dart'
    show
        Uint8ListConverter,
        Uint8ListListConverter,
        rfc822FromJson,
        rfc822ToJson,
        iso8601FromJson,
        iso8601ToJson,
        unixTimestampFromJson,
        unixTimestampToJson;

export 'package:shared_aws_api/shared.dart' show AwsClientCredentials;

/// Timestamp values
class TimestampValues {
  final _s.RestJsonProtocol _protocol;
  TimestampValues({
    @_s.required String region,
    _s.AwsClientCredentials credentials,
    _s.Client client,
    String endpointUrl,
  }) : _protocol = _s.RestJsonProtocol(
          client: client,
          service: _s.ServiceMetadata(
            endpointPrefix: 'TimestampValues',
          ),
          region: region,
          credentials: credentials,
          endpointUrl: endpointUrl,
        );

  Future<void> operationName0({
    DateTime timeArg,
    DateTime timeArgInHeader,
    DateTime timeArgInQuery,
    DateTime timeCustom,
    DateTime timeCustomInHeader,
    DateTime timeCustomInQuery,
    DateTime timeFormat,
    DateTime timeFormatInHeader,
    DateTime timeFormatInQuery,
  }) async {
    final headers = <String, String>{};
    timeArgInHeader?.let((v) => headers['x-amz-timearg'] = _s.rfc822ToJson(v));
    timeCustomInHeader?.let((v) => headers['x-amz-timecustom-header'] =
        _s.unixTimestampToJson(v).toString());
    timeFormatInHeader?.let((v) => headers['x-amz-timeformat-header'] =
        _s.unixTimestampToJson(v).toString());
    var _query = '';
    _query = '?${[
      if (timeArgInQuery != null)
        _s.toQueryParam('TimeQuery', _s.iso8601ToJson(timeArgInQuery)),
      if (timeCustomInQuery != null)
        _s.toQueryParam('TimeCustomQuery',
            _s.unixTimestampToJson(timeCustomInQuery).toString()),
      if (timeFormatInQuery != null)
        _s.toQueryParam('TimeFormatQuery',
            _s.unixTimestampToJson(timeFormatInQuery).toString()),
    ].where((e) => e != null).join('&')}';
    final $payload = <String, dynamic>{
      if (timeArg != null) 'TimeArg': unixTimestampToJson(timeArg),
      if (timeCustom != null) 'TimeCustom': iso8601ToJson(timeCustom),
      if (timeFormat != null) 'TimeFormat': rfc822ToJson(timeFormat),
    };
    await _protocol.send(
      payload: $payload,
      headers: headers,
      method: 'POST',
      requestUri: '/path$_query',
      exceptionFnMap: _exceptionFns,
    );
  }
}

final _exceptionFns = <String, _s.AwsExceptionFn>{};
