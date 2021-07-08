import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello World',
      'button_text': 'You have clicked',
    },
    'tr_TR': {
      'hello': 'Merhaba Welt',
      'button_text': 'Butona basılma miktarı :',
    }
  };
}