import 'userMetaData.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:image_picker/image_picker.dart';

class Group extends Model {
  ImagePicker groupPic;
  String name;
  bool admin;
  List<User> users;
  List<Group> links;
  GroupTypes typeOfGroup;
  Group(this.name, this.typeOfGroup) {
    admin = true;
    users = new List<User>();
    links = new List<Group>();
  }

  set isAdmin(bool a) {
    admin = a;
  }

  set nameOfGroup(String newName) {
    name = newName;
  }

  set groupType(GroupTypes type) {
    typeOfGroup = type;
  }

  ImagePicker get groupProfilePicture {
    return groupPic;
  }

  set grouProfilePicture(ImagePicker image) {
    groupPic = image;
  }

  String get nameOfGroup {
    return name;
  }

  GroupTypes get groupType {
    return typeOfGroup;
  }

  bool get isAdmin {
    return admin;
  }

  Iterable<User> get usersInGroup {
    return users;
  }

  void addUserToGroup(User user) {
    users.add(user);
  }

  void newLink(Group group) {
    links.add(group);
  }

  void removeUserFromGroup(User user) {
    users.remove(user);
  }
}

enum GroupTypes {
  social,
  sports,
  school,
  work,
}
