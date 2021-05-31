import 'package:flutter/material.dart';
import '../stdEnd/widgets/topBar.dart';

class UserProfile extends StatelessWidget {
  Widget buildCard(String title, IconData icon, String subtitle) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(
          icon,
          size: 19,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 13, color: Colors.grey[600]),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        onTap: () {},
        //trailing: Icon(Icons.edit),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height / 3,
            width: double.infinity,
            child: Stack(
              //alignment: Alignment.centerRight,
              children: [
                //TopBar(),

                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.lightBlue,
                          Colors.lightBlue[300],
                          Colors.lightBlue[100],
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 130, right: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      //alignment: Alignment.centerRight,
                      //padding: EdgeInsets.only(top: 50, right: 70),
                      height: size.height / 2,
                      width: size.width / 2,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 5),
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 200, left: 300),
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 100, left: 40),
                    child: Column(
                      children: [
                        Text(
                          'User Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'user@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            // fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: TopBar(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height / 10,
          ),
          Container(
            child: Column(
              children: [
                buildCard('Full Name', Icons.person, 'User Name'),
                buildCard('Department', Icons.school,
                    'Computer Science & Engineering'),
                buildCard('Session', Icons.calendar_view_day, '2018-19'),
                buildCard('Registration', Icons.circle, '20183310**'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 80);
    var controllPoint = Offset(15, size.height - 50);
    var endPoint = Offset(size.width / 6, size.height);
    path.quadraticBezierTo(
      controllPoint.dx,
      controllPoint.dy,
      endPoint.dx,
      endPoint.dy,
    );

    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
