import 'package:flutter/material.dart';
import '../stdEnd/widgets/main_drawer.dart';
import '../dummy_data.dart';
import '../stdEnd/widgets/teachers.dart';

class TeacherList extends StatefulWidget {
  @override
  _TeacherListState createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {
  TextEditingController c;
  void startJoining(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (_) {
        return AlertDialog(
          title: Text("Join"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  "Ask your teacher for the code then enter it here",
                  style: TextStyle(color: Colors.grey[900]),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Code'),
                  controller: c,
                  onSubmitted: (_) {},
                  // onChanged: (val) => amountInput = val,
                ),
              ],
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () {},
              child: Text('CANCEL'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('JOIN'),
            ),
          ],
        );
      },
      //barrierDismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //final GlobalKey _scaffoldKey = new GlobalKey();
    return Scaffold(
      //key: _scaffoldKey,
      appBar: AppBar(
        //drawer: MainDrawer(),
        //leading: IconButton(
        //icon: Icon(
        // Icons.dehaze,
        // color: Colors.black,
        // ),
        // onPressed: () {
        //MainDrawer;
        // }),
        //drawer: MainDrawer(),
        title: const Text(
          'Appointment Scheduler',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_rounded),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: ListView.builder(
          padding: const EdgeInsets.all(17),
          itemCount: DUMMY_DATA.length,
          itemBuilder: (ctx, i) {
            return InkWell(
              child: Teacher(DUMMY_DATA[i].name, DUMMY_DATA[i].color),
              onTap: () {},
            );
          }

          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //crossAxisCount: 1,
          //childAspectRatio: 4.5 / 2,
          // crossAxisSpacing: 10,
          // mainAxisSpacing: 20,
          //
          // ),

          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          startJoining(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
