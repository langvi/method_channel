import 'package:flutter/services.dart';

class MyChannel {
  static const platform = const MethodChannel('vi/battery');

  Future<String> getBatteryLevel() async {
    String batteryLevel;
    try {
      final String result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = result;
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    return batteryLevel;
  }
}
