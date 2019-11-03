import 'package:flutter/material.dart';
import 'userMetaData.dart';
import 'package:caos/groupMetaData.dart';

class HomePage extends StatefulWidget {
  final User currentUser;
  HomePage(this.currentUser);
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    User metaUser = new User();
    User me = new User();
    me.firstName = 'luke';
    Group otherGroup = new Group('265', GroupTypes.social);
    Group group = new Group('Hackers', GroupTypes.work);
    group.addUserToGroup(me);
    group.newLink(otherGroup);
    metaUser.makeAGroup('265', GroupTypes.school);
    metaUser.joinAGroup(group);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: Container(
        height: width/6,
        width: width/6,
        child: FloatingActionButton(
          backgroundColor: Colors.blue[100],
          elevation: 0,
          child: Icon(
            Icons.add,
            size: width / 8,
          ),
          onPressed: () {},
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[100],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            height: 90,
            width: width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  child: Align(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://www.thoughtco.com/thmb/wSg3B-jSZQJcTMCwUbI_P6We1fE=/4560x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/duckling-close-up-500315849-572917c93df78ced1f0b99ec.jpg'),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    child: Text(
                      'caos',
                      style: TextStyle(
                          fontSize: 60,
                          color: Colors.black54,
                          fontFamily: 'Puritan'),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Align(
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              width: width - 20,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
                border: Border.all(
                  width: 3,
                  color: Colors.blue[100],
                ),
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                cursorColor: Colors.blue[100],
                style: TextStyle(
                  fontFamily: 'Puritan',
                  fontSize: 20,
                ),
                decoration: InputDecoration.collapsed(
                    hintText: 'search anything',
                    hintStyle: TextStyle(fontSize: 20)),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                print(metaUser.groups[index]);
                return groupCard(metaUser.groups[index], height / 6);
              },
              itemCount: metaUser.groups.length,
            ),
          ),
        ],
      ),
    );
  }
}

Widget groupCard(Group group, double height) {
  return Card(
    elevation: 0,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: height,
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/45572118/3/?bust=1568467706&width=1080'),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text('1'),
                    width: height / 4,
                    height: height / 4,
                    decoration: BoxDecoration(
                        color: Colors.red[300], shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 5, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    group.name,
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black87,
                        fontFamily: 'Puritan'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        group.getGroupTypeString(),
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Puritan',
                            color: Colors.black54),
                      ),
                      Container(
                        width: 3,
                        height: 3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black38,
                        ),
                      ),
                      Text(
                        group.users.length.toString() + ' members',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Puritan',
                            color: Colors.black54),
                      ),
                    ],
                  ),
                  Text(
                    group.links.length.toString() + ' links',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        fontFamily: 'Puritan'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {},
            ),
          ),
        ],
      ),
    ),
  );
}
