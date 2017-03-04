// Copyright (c) 2017, tomucha. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:simple_angular/mala_komponenta.dart';
import 'package:simple_angular/muj_super_kontext.dart';

/**
 * A to je naše komponenta.
 *
 * V konstruktoru si od Angularu objedná instanci
 * objektu MujSuperKonext a dostane ji.
 *
 */
@Component(
    selector: 'hlavni-komponenta',
    /* šablona je tu stále dost krátká na to, abychom ji dávali
    do zvláštního souboru, ale využijeme víceřádkové řetězce Dartu.*/
    template: '''

      <h1>DI {{kontext.hlavniHodnota}}</h1>
      <mala-komponenta nazev="Opravdu"></mala-komponenta>

    ''',
    /* musíme deklarovat, které komponenty budeme používat,
    ale jde to udělat i globálně v pubspec.yaml */
    directives: const [MalaKomponenta]
)
class HlavniKomponenta {
  String name = "DI";

  MujSuperKontext kontext;

  HlavniKomponenta(this.kontext);
}
