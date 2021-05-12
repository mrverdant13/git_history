import 'package:flutter/foundation.dart';

import '../../../domain/entities/repository/entity.dart';
import '../../../domain/entities/user/entity.dart';

class GlobalStoreChangeNotifier extends ChangeNotifier {
  late Repository _selectedRepository;
  Repository get selectedRepository => _selectedRepository;
  set selectedRepository(Repository value) {
    _selectedRepository = value;
    notifyListeners();
  }

  late User _selectedUser;
  User get selectedUser => _selectedUser;
  set selectedUser(User value) {
    _selectedUser = value;
    notifyListeners();
  }
}
