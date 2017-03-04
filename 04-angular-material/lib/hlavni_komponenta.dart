import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:angular_material/ahoj_dialog/ahoj_dialog.dart';

/*


 */
@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, AhojDialog],
  providers: const [materialProviders],
)
class HlavniKomponenta {
  
}
