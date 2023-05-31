// Mocks generated by Mockito 5.4.1 from annotations
// in clean_flutter_template/test/shared/helpers/services/http_service_test.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:clean_flutter_template/shared/domain/storage/local_storage_interface.dart'
    as _i3;
import 'package:clean_flutter_template/shared/helpers/services/http_request_interface.dart'
    as _i5;
import 'package:dio/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0<T> extends _i1.SmartFake implements _i2.Response<T> {
  _FakeResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ILocalStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockILocalStorage extends _i1.Mock implements _i3.ILocalStorage {
  MockILocalStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<void> saveRefreshToken(String? token) => (super.noSuchMethod(
        Invocation.method(
          #saveRefreshToken,
          [token],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<String> getRefreshToken() => (super.noSuchMethod(
        Invocation.method(
          #getRefreshToken,
          [],
        ),
        returnValue: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
}

/// A class which mocks [IHttpRequest].
///
/// See the documentation for Mockito's code generation for more information.
class MockIHttpRequest extends _i1.Mock implements _i5.IHttpRequest {
  MockIHttpRequest() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Response<dynamic>> get(String? url) => (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
        ),
        returnValue:
            _i4.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #get,
            [url],
          ),
        )),
      ) as _i4.Future<_i2.Response<dynamic>>);
  @override
  _i4.Future<_i2.Response<dynamic>> post(
    String? url,
    dynamic data,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [
            url,
            data,
          ],
        ),
        returnValue:
            _i4.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #post,
            [
              url,
              data,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Response<dynamic>>);
  @override
  _i4.Future<_i2.Response<dynamic>> put(
    String? url,
    dynamic data,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [
            url,
            data,
          ],
        ),
        returnValue:
            _i4.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #put,
            [
              url,
              data,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Response<dynamic>>);
  @override
  void setAuthorizationToken(String? authorizationToken) => super.noSuchMethod(
        Invocation.method(
          #setAuthorizationToken,
          [authorizationToken],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void clearAuthorizationToken() => super.noSuchMethod(
        Invocation.method(
          #clearAuthorizationToken,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
