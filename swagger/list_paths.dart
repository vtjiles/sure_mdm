import 'dart:convert';
import 'dart:io';

main() async {
  var file = File('./sure_mdm.json');
  var contents = await file.readAsString();
  var json = jsonDecode(contents);

  var paths = Map<String, dynamic>.from(json['paths']);
  for (var element in paths.keys) {
    print('           - "$element"');
  }
}
