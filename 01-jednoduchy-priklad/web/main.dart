import 'package:angular2/platform/browser.dart';

import 'package:simple_angular/hlavni_komponenta.dart';

/*
 Každá Dart aplikace musí mít svoji main funkci,
 kde všechno začíná.
*/
void main() {

  /*
    V tomto případě tu toho ale moc není,
    pustí se metoda Angularu "bootstrap" s kořenovým elementem
    naší aplikace.

    Viz. hlavni_komponenta.dart v adresáři lib.
    
   */
  bootstrap(HlavniKomponenta);

}
