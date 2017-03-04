// Copyright (c) 2016, Tomucha. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:firebase/screens/about/about_screen.dart';
import 'package:firebase/screens/sensors/sensors_screen.dart';
import 'package:firebase3/firebase.dart';
import 'package:fnx_ui/fnx_ui.dart';

@Component(
    selector: 'main-app',
    templateUrl: 'main_app.html'
)
@RouteConfig(const [
  const Route(path: "/About", name: "About", component: AboutScreen, useAsDefault: true),
  const Route(path: "/Sensors", name: "Sensors", component: SensorsScreen),
])
class MainApp implements AfterViewInit {

  @ViewChild(FnxApp)
  FnxApp app;

  MainApp() {
  }

  @override
  void ngAfterViewInit() {
    // ukázka zpráv pro uživatele
    app.toast("Jedu, žiju, jsem cajk!");
  }

}