import 'dart:async';
import 'package:angular2/core.dart';
import 'package:firebase3/firebase.dart';

@Component(
  selector: 'sensors_screen',
  templateUrl: 'sensors_screen.html')
class SensorsScreen implements OnInit, OnDestroy {

  List<Map> sensorData = [];
  Database database;
  StreamSubscription s;

  SensorsScreen(this.database);

  /*
  Při startu komponenty se zaregistrujeme ke streamu nových dat z Firebase.
   */
  @override
  void ngOnInit() {
     s = database.ref("/senzory").onChildAdded.listen(addNewEvent);
  }

  /*
    A pak po sobě uklidíme.
   */
  @override
  ngOnDestroy() {
    s.cancel();
  }

  void addNewEvent(QueryEvent event) {
    sensorData.insert(0, event.snapshot.val() as Map);
    while(sensorData.length > 100) {
      sensorData.removeLast();
    }
  }

}
