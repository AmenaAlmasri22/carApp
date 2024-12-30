import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

// واجهة NetworkInfo
abstract class NetworkInfoI {
  Future<bool> isConnected();
  Future<List<ConnectivityResult>> get connectivityResult;
  Stream<List<ConnectivityResult>> get onConnectivityChanged;
}

// فئة NetworkInfo للتحقق من الاتصال بالإنترنت
class NetworkInfo implements NetworkInfoI {
  static final NetworkInfo _networkInfo = NetworkInfo._internal(Connectivity());
  final Connectivity connectivity;

  NetworkInfo._internal(this.connectivity);

  factory NetworkInfo() {
    return _networkInfo;
  }

  // التحقق من الاتصال بالإنترنت
  @override
  Future<bool> isConnected() async {
    final result = await connectivityResult;
    return !result.contains(ConnectivityResult.none); // يرجع [true] إذا كان الاتصال موجودًا، وإلا يرجع [false]
  }

  // التحقق من نوع الاتصال بالإنترنت
  @override
  Future<List<ConnectivityResult>> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  // متابعة التغيرات في حالة الاتصال بالإنترنت
  @override
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}

// استثناءات الشبكة
abstract class Failure {}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

// استثناء خاص بعدم وجود اتصال بالإنترنت
class NoInternetException implements Exception {
  late String _message;

  NoInternetException([String message = 'NoInternetException Occurred']) {
    // if (globalMessengerKey.currentState != null) {
    //   globalMessengerKey.currentState!
    //       .showSnackBar(SnackBar(content: Text(message)));
    // }
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
}
