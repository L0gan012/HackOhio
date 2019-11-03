import 'package:flutter/material.dart';

import 'userMetaData.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:image_picker/image_picker.dart';

class Group extends Model {
  ImagePicker groupPic;
  String name, description;
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

  set descriptionOfGroup(String newDesc) {
    description = newDesc;
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

  String get descriptionOfGroup {
    return description;
  }

  String getGroupTypeString() {
    switch (typeOfGroup) {
      case GroupTypes.social:
        return 'Social';
        break;
      case GroupTypes.work:
        return 'Business';
        break;
      case GroupTypes.school:
        return 'School';
        break;
      case GroupTypes.sports:
        return 'Sports';
        break;

      default:
        return 'error';
    }
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

  List<DropdownMenuItem<GroupTypes>> groupTypesDropDown() {
    List<DropdownMenuItem<GroupTypes>> out =
        new List<DropdownMenuItem<GroupTypes>>();
    out.add(new DropdownMenuItem<GroupTypes>(
        value: GroupTypes.social, child: Text('social')));
    out.add(new DropdownMenuItem<GroupTypes>(
        value: GroupTypes.school, child: Text('school')));
    out.add(new DropdownMenuItem<GroupTypes>(
        value: GroupTypes.work, child: Text('work')));
    out.add(new DropdownMenuItem<GroupTypes>(
      value: GroupTypes.sports,
      child: Text('sports'),
    ));
    return out;
  }
}

enum GroupTypes {
  social,
  sports,
  school,
  work,
}
