import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';

import 'package:simple_angular/hlavni_komponenta.dart';
import 'package:simple_angular/muj_super_kontext.dart';

void main() {

  /*
    Připravíme si instance objektů,
    které budeme potřebovat v hlubinách našeho
    stromu komponent.

    Mohou to být služby, které zajišťují
    připojení na REST API, globální kontext (stav),
    apod.

   */
  MujSuperKonext konext = new MujSuperKonext("magic");

  /*
    ... a při startu Angularu objekty zaregistrujeme do Dependency Injection.
   */
  bootstrap(HlavniKomponenta,
      [provide(MujSuperKonext, useValue : konext)]
  );
  
}