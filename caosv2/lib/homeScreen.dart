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
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          print(metaUser.groups[index]);
          return groupCard(metaUser.groups[index], height / 6);
        },
        itemCount: metaUser.groups.length,
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
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/45572118/3/?bust=1568467706&width=1080'))),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: <Widget>[
                Text(
                  group.name,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Expanded(
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

class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    final double innerCircleRadius = 150.0;

    Path path = Path();
    path.lineTo(0, rect.height);
    path.quadraticBezierTo(rect.width / 2 - (innerCircleRadius / 2) - 30,
        rect.height + 15, rect.width / 2 - 75, rect.height + 50);
    path.cubicTo(40, 30, 20, 10, 40, 40);
    path.quadraticBezierTo(rect.width / 2 + (innerCircleRadius / 2) + 30,
        rect.height + 15, rect.width, rect.height);
    path.lineTo(rect.width, 0.0);
    path.close();

    return path;
  }
}
