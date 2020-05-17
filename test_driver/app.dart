import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_integration_test/main.dart' as production_app;

void main() {
  enableFlutterDriverExtension();
  production_app.main();
}
