import 'dart:convert';
import 'package:note_app/core/constants/local_storage_keys_constants.dart';
import 'package:note_app/core/model/note_model.dart';
import 'package:note_app/core/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences _sharedPreferences;
  static final LocalStorage _instance = LocalStorage._internal();

  LocalStorage._internal();

  factory LocalStorage() {
    return _instance;
  }

  static Future<void> init() async =>
      _sharedPreferences = await SharedPreferences.getInstance();

  Future<List<User>?> getAllUsers() async {
    final allUsersStringList =
        _sharedPreferences.getStringList(LocalStorageKeysConstants.allUsers);

    if (allUsersStringList == null) {
      return null;
    }
    return allUsersStringList.map((userString) {
      return User.fromJson(jsonDecode(userString));
    }).toList();
  }

  Future<void> saveUser(User user) async {
    final stringUser = jsonEncode(user.toJson());
    final allUsers =
        _sharedPreferences.getStringList(LocalStorageKeysConstants.allUsers) ??
            [];
    allUsers.add(stringUser);
    _sharedPreferences.setStringList(
      LocalStorageKeysConstants.allUsers,
      allUsers,
    );
  }

  Future<User?> getCurrentUser() async {
    final result =
        _sharedPreferences.getString(LocalStorageKeysConstants.currentUser);
    if (result == null) return null;
    final user = User.fromJson(jsonDecode(result));
    return user;
  }

  Future<void> saveCurrentUser(User user) async {
    await _sharedPreferences.setString(
        LocalStorageKeysConstants.currentUser, jsonEncode(user.toJson()));
  }

  Future<List<Note>> getUserNotes(String userId) async {
    final notesJson = _sharedPreferences.getStringList(
      userId,
    );
    print('noteeeeeeeeeeeeeeeeeeeee $notesJson');
    if (notesJson == null) return [];

    return notesJson.map((noteString) {
      return Note.fromJson(jsonDecode(noteString));
    }).toList();
  }

  Future<void> saveUserNotes(String userId, List<Note> notes) async {
    final notesJson = notes.map((note) => jsonEncode(note.toJson())).toList();
    await _sharedPreferences.setStringList(userId, notesJson);
  }

  Future<void> deleteCurrentUser() async =>
      _sharedPreferences.remove(LocalStorageKeysConstants.currentUser);
}
