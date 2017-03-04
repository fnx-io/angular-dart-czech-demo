import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
  selector: 'ahoj-dialog',
  styleUrls: const ['ahoj_dialog.css'],
  templateUrl: 'ahoj_dialog.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class AhojDialog {
  
  /*
  Odkaz na materiálovou komponentu,
  která zajišťuje "modální" chování.
   */
  @ViewChild('wrappingModal')
  ModalComponent wrappingModal;

  /*
  Jméno, které AhojDialog dostává jako atribut.
   */
  @Input()
  String name = "";

  /*
  Metoda, která dialog "zviditelní".
   */
  void open([String name]) {
    if (name != null) this.name = name;
    wrappingModal.open();
  }

}
