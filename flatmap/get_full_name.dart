//flatmap
//unwrapping and mapping optional values

import '../extensions/extension_flat_map.dart';

void main() {
  String? firstName = 'subru';
  String? lastName = 'zz';
  final name = firstName.flatMap((f) => lastName.flatMap((l) => '$f $l'));
  print(name);
}
