import 'package:scoped_model/scoped_model.dart';
import 'groupMetaData.dart';
import 'package:image_picker/image_picker.dart';

class User extends Model {
  ImagePicker avatar;
  String username, password, firstName, lastName;
  List<Group> groups;
  User() {
    groups = new List<Group>();
  }

  ImagePicker get profilePicture {
    return avatar;
  }

  set profilePicture(ImagePicker image) {
    avatar = image;
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
