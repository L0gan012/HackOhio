import 'package:scoped_model/scoped_model.dart';
import 'groupMetaData.dart';

class User extends Model {
  String username, password, firstName, lastName;
  List<Group> groups;
  User() {
    groups = new List<Group>();
  }

  String get getUsername {
    return username;
  }

  set updateUsername(String newUsername) {
    username = newUsername;
  }

  String get getFirstName {
    return firstName;
  }

  set updateFirstName(String newFirsName) {
    firstName = newFirsName;
  }

  String get getLastName {
    return username;
  }

  set updateLastName(String newLastname) {
    username = newLastname;
  }

  void makeAGroup(String name, GroupTypes type) {
    Group newGroup = new Group(name, type);
    groups.add(newGroup);
  }

  void joinAGroup(Group group) {
    groups.add(group);
  }
}
