import 'package:device_info_plus/device_info_plus.dart';

enum BuildMode { debug, profle, release }

class DeviceConfig {
  static BuildMode currentBuildMode() {
    if (const bool.fromEnvironment('dart.vm.product')) {
      return BuildMode.release;
    }
    var result = BuildMode.profle;
    assert(() {
      result = BuildMode.debug;
      return true;
    }());
    return result;
  }

  static Future<AndroidDeviceInfo> androidDeviceInfo() async {
    var deviceInfoPlugin = DeviceInfoPlugin();
    return deviceInfoPlugin.androidInfo;
  }

  static Future<IosDeviceInfo> iosDeviceInfo() async {
    var deviceInfoPlugin = DeviceInfoPlugin();
    return deviceInfoPlugin.iosInfo;
  }
}
