import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2/router.dart';
import 'package:angular2/platform/browser.dart';

import 'package:routing/hlavni_komponenta.dart';

void main() {

  // START!
  bootstrap(HlavniKomponenta, [
      ROUTER_PROVIDERS,
      provide(LocationStrategy, useClass: HashLocationStrategy)
  ]);

}
