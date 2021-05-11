import 'package:flutter/foundation.dart';

import '../../../domain/entities/user/entity.dart';

class GlobalStoreChangeNotifier extends ChangeNotifier {
  late User _selectedUser;
  User get selectedUser => _selectedUser;
  set selectedUser(User value) {
    _selectedUser = value;
    notifyListeners();
  }
}
