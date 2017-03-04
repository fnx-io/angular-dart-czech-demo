import 'package:angular2/core.dart';

/**
 * Naše hlavní komponenta. Tady začíná
 * uživatelské rozhraní naší aplikace.
 *
 * Každá komponenta je pouze jednoduchý Dart objekt,
 * ze kterého se pomocí metadat stane Angular komponenta.
 *
 * A to je celé. Můžete na další příklad :-)
 *
 */
@Component(
  selector: 'hlavni-komponenta',         /* tj. jak se komponenta identifikuje v HTML souborech */
  template: '''

    <h1>Ahoj {{jmeno}}!</h1>
    <p><input type="text" [(ngModel)]="jmeno"></p>

    '''
)
class HlavniKomponenta {

  var jmeno = 'Angular';
  
}