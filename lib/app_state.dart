import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _firstName = prefs.getString('ff_firstName') ?? _firstName;
    });
    _safeInit(() {
      _lastName = prefs.getString('ff_lastName') ?? _lastName;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _bottomIndex = prefs.getInt('ff_bottomIndex') ?? _bottomIndex;
    });
    _safeInit(() {
      _homeIndex = prefs.getInt('ff_homeIndex') ?? _homeIndex;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userModel')) {
        try {
          final serializedData = prefs.getString('ff_userModel') ?? '{}';
          _userModel =
              LoginModelStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _introIndex = 0;
  int get introIndex => _introIndex;
  set introIndex(int value) {
    _introIndex = value;
  }

  List<CategoriesStruct> _profile = [
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/cy50r6tx18ui/profile1.png\",\"title\":\"My profile\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/p7z65cbetl9w/profile2.png\",\"title\":\"Security\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/18brr2rr7gzn/profile3.png\",\"title\":\"Settings\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/yyzh8oyy8j79/profile4.png\",\"title\":\"My favorite\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/adt4e4tntf6r/profile5.png\",\"title\":\"Privacy policy\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/vefx6evlyffv/security2.png\",\"title\":\"Notification\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/iv9m80msnxhe/profile6.png\",\"title\":\"Logout\"}'))
  ];
  List<CategoriesStruct> get profile => _profile;
  set profile(List<CategoriesStruct> value) {
    _profile = value;
  }

  void addToProfile(CategoriesStruct value) {
    profile.add(value);
  }

  void removeFromProfile(CategoriesStruct value) {
    profile.remove(value);
  }

  void removeAtIndexFromProfile(int index) {
    profile.removeAt(index);
  }

  void updateProfileAtIndex(
    int index,
    CategoriesStruct Function(CategoriesStruct) updateFn,
  ) {
    profile[index] = updateFn(_profile[index]);
  }

  void insertAtIndexInProfile(int index, CategoriesStruct value) {
    profile.insert(index, value);
  }

  List<CategoriesStruct> _setting = [
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/he3ofgv7jyuo/setting1.png\",\"title\":\"About us\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/etv40ab78bl9/setting2.png\",\"title\":\"Help\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/m1duljp65v60/setting3.png\",\"title\":\"Feedback\"}'))
  ];
  List<CategoriesStruct> get setting => _setting;
  set setting(List<CategoriesStruct> value) {
    _setting = value;
  }

  void addToSetting(CategoriesStruct value) {
    setting.add(value);
  }

  void removeFromSetting(CategoriesStruct value) {
    setting.remove(value);
  }

  void removeAtIndexFromSetting(int index) {
    setting.removeAt(index);
  }

  void updateSettingAtIndex(
    int index,
    CategoriesStruct Function(CategoriesStruct) updateFn,
  ) {
    setting[index] = updateFn(_setting[index]);
  }

  void insertAtIndexInSetting(int index, CategoriesStruct value) {
    setting.insert(index, value);
  }

  List<String> _searchList1 = [];
  List<String> get searchList1 => _searchList1;
  set searchList1(List<String> value) {
    _searchList1 = value;
  }

  void addToSearchList1(String value) {
    searchList1.add(value);
  }

  void removeFromSearchList1(String value) {
    searchList1.remove(value);
  }

  void removeAtIndexFromSearchList1(int index) {
    searchList1.removeAt(index);
  }

  void updateSearchList1AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    searchList1[index] = updateFn(_searchList1[index]);
  }

  void insertAtIndexInSearchList1(int index, String value) {
    searchList1.insert(index, value);
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String value) {
    _firstName = value;
    prefs.setString('ff_firstName', value);
  }

  String _lastName = '';
  String get lastName => _lastName;
  set lastName(String value) {
    _lastName = value;
    prefs.setString('ff_lastName', value);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    prefs.setString('ff_email', value);
  }

  int _bottomIndex = 0;
  int get bottomIndex => _bottomIndex;
  set bottomIndex(int value) {
    _bottomIndex = value;
    prefs.setInt('ff_bottomIndex', value);
  }

  int _select = 0;
  int get select => _select;
  set select(int value) {
    _select = value;
  }

  int _homeIndex = 0;
  int get homeIndex => _homeIndex;
  set homeIndex(int value) {
    _homeIndex = value;
    prefs.setInt('ff_homeIndex', value);
  }

  LoginModelStruct _userModel = LoginModelStruct();
  LoginModelStruct get userModel => _userModel;
  set userModel(LoginModelStruct value) {
    _userModel = value;
    prefs.setString('ff_userModel', value.serialize());
  }

  void updateUserModelStruct(Function(LoginModelStruct) updateFn) {
    updateFn(_userModel);
    prefs.setString('ff_userModel', _userModel.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
