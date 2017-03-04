import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:routing/obsahy.dart';

/**

    Výsledkem routování (viz. router-outlet v šabloně),
    může být jakákoliv komponenta. Cestu ke komponentě definuje
    rodič.

    Nejastěji asi využijete statické routování pomocí metadat
    jako je to zde.

    Routování může být hierarchické - potomci mohou
    mít vlastní routovací pravidla pro své děti atd..

 */
@Component(
    selector: 'hlavni-komponenta',         /* tj. jak se komponenta identifikuje v HTML souborech */
    templateUrl: 'hlavni_komponenta.html'
)
@RouteConfig(const [
  const Route(path: "/Cesta1", name: "Cesta1", component: Obsah1, useAsDefault: true),
  const Route(path: "/Cesta2", name: "Cesta2", component: Obsah2),
  const Route(path: "/Cesta3/:parametr", name: "Cesta3", component: Obsah3),
])
class HlavniKomponenta {

  // sama hlavní komponenta v tomto příkladu nedělá nic

}