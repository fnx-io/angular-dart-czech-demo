import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

/*
  Tři mikrokomponenty, které se pomocí routování vloží jako
  obsah hlavní komponenty.
 */

@Component(
    selector: 'obsah-1',
    template: "<p>Nazdárek, já jsem první obsah.</p>"
)
class Obsah1 { }

@Component(
    selector: 'obsah-2',
    template: "<p>A já druhý!</p>"
)
class Obsah2 { }

/*
  Složitější komponenta, která si při svém startu řekne
  o aktuální parametry routeru a může je využít - např.
  ID záznamu, který se má načíst a zeditovat.

  Komponenta implementuje interface OnReuse
  a je notifikována o změnách v routování.
  
 */
@Component(
    selector: 'obsah-3',
    template: "<p>A já dostal i parametr = {{parametr}}!</p>"
)
class Obsah3 implements OnReuse {

  String parametr;

  /*
  RouterParams, tj. aktuální parametry routeru z URL nám předá
  dependency injection mechanizmus.

  Pozn.: Nejsou to "parametry za otazníkem", jsou to části cesty, které jsou
  proměnlivé.
   */
  Obsah3(RouteParams params) {
    parametr = params.get("parametr");
  }

  @override
  routerOnReuse(ComponentInstruction nextInstruction, ComponentInstruction prevInstruction) {
    parametr = nextInstruction.params["parametr"];
  }

}