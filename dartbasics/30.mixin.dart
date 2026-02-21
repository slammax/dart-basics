void main() {
  var iphone = Phone();
  iphone.enableWifi();
  iphone.disableWifi();
  iphone.isEnebled;
}

mixin Wifi {
  var isEnebled = false;

  void enableWifi() {
    isEnebled = true;
    print('Wifi enabled');
  }

  void disableWifi() {
    isEnebled = false;
    print('Wifi disabled');
  }
}

class Phone with Wifi {}

class TV with Wifi {}
