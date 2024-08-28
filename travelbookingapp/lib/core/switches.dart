class Switches {
  bool _visibility;
  int _click;

  Switches({
    required bool visibility,
    required int click,
  })  : _visibility = visibility,
        _click = click;

  // Getter for visibility
  bool get visibility => _visibility;

  // Correct setter for visibility
  set visibility(bool value) => _visibility = value;

  // Getter for clicks
  int get clicks => _click;

  // Method to increment click value
  void click() {
    if (_click + 1 <= 2) {
      _click += 1;
    }
  }

  // Method to reset click and visibility
  void refactorClick() {
    _visibility = true;
    _click = 0;
  }
}

class MealsSwitch {
  bool _visibility;
  int _items = 0;

  MealsSwitch({
    required bool visibility,
    int? items,
  })  : _visibility = visibility,
        _items = items!;

  // Getter for visibility
  bool get visibility => _visibility;

  // Correct setter for visibility
  set visibility(bool value) => _visibility = value;

  // Getter for clicks
  int get items => _items;

  // Method to increment click value
  void increment() {
    _items += 1;
  }

  void decrement() {
    if (_items - 1 >= 0) {
      _items -= 1;
    } else {
      _items = 0;
    }
  }

  // Method to reset click and visibility
  void refactorItems() {
    _visibility = true;
    _items = 0;
  }
}
