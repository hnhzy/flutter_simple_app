/**
 * This is an example of how to set up the [EventBus] and its events.
 */
import 'package:event_bus/event_bus.dart';



//https://pub.dartlang.org/packages/event_bus#-readme-tab-
//1. Create an Event Bus
EventBus eventBus = new EventBus();


//2. Define Events
/// Event A.
class MyEventA {
  String text;

  MyEventA(this.text);
}

/// Event B.
class MyEventB {
  String text;

  MyEventB(this.text);
}