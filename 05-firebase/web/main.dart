// Copyright (c) 2016, Tomucha. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/router.dart';
import 'package:angular2/src/platform/location.dart';
import 'package:firebase/main_app.dart';
import 'package:firebase3/firebase.dart' as f;
import 'package:logging/logging.dart';

main() {

  Level currentLoggingLevel = Level.ALL;

  // nakonfigurujeme logování
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    if (rec.level.value > currentLoggingLevel.value) {
      String msg = "${rec.loggerName}: ${rec.level.name}: ${rec.time} ${rec.message} ${rec.error ?? ''}";
      print(msg);
      if (rec.stackTrace != null) {
        print(rec.stackTrace);
      }
    }
  });

  // zinicializujeme Firebase - jsou to moje klíče,
  // takže je možné si to nezávazně zkusit, ale na reaálný provoz nebo vývoj
  // si budete muset pořídit vlastní ...
  f.App app = f.initializeApp(
      apiKey: "AIzaSyC8EqzmspNdtmF-QSYVpf9BBzGa0p5JMSU",
      authDomain: "aimtechackathon-674ed.firebaseapp.com",
      databaseURL: "https://aimtechackathon-674ed.firebaseio.com",
      storageBucket: "aimtechackathon-674ed.appspot.com"
  );

  // zaregistrujeme FB do dependency injection
  bootstrap(MainApp, [
      ROUTER_PROVIDERS,
      provide(LocationStrategy, useClass: HashLocationStrategy),
      provide(f.App, useValue: app),
      provide(f.Database, useValue: app.database())
  ]);
}
