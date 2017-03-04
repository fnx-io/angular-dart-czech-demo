import 'package:angular2/core.dart';
import 'package:simple_angular/hlavni_komponenta.dart';

/*
  Ukázka toho, jak si komponenta může nechat nainjektovat některého
  ze svých předků.
 */
@Component(
    selector: 'mala-komponenta',
    template: '<p>{{nazev}} {{app.kontext.hlavniHodnota}}</p>'
)
class MalaKomponenta {

  /*
    Anotací Input označím vlastnosti, které lze komponentě
    nastavit jako atribut.
   */
  @Input()
  String nazev;

  HlavniKomponenta app;

  MalaKomponenta(this.app);

}