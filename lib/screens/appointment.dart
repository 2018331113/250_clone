import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
import '../stdEnd/widgets/main_drawer.dart';
import '../screens/userProfile.dart';
import '../screens/settings.dart';
import 'acAppts.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => AcceptedAppt(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  void presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2023),
    ); //.then((pickedDate) {
    // if (pickedDate == null) {
    // return;
    // }
    // setState(() {
    // _selectedDate = pickedDate;
    // });
    // });
    // print('...');
  }

  void startJoining(BuildContext ctx) {
    TextEditingController c;
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
    );
  }

  void createAppt(BuildContext ctx) {
    TextEditingController c;
    showDialog(
      context: ctx,
      builder: (_) {
        return AlertDialog(
          title: Text("Create Appointment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                //Text(
                // "Ask your teacher for the code then enter it here",
                // style: TextStyle(color: Colors.grey[900]),
                // ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Teacher',
                  ),
                  controller: c,
                  onSubmitted: (_) {},
                ),
                // SizedBox(
                // height: 20,
                // ),

                // Text(
                //'Choose Date',
                // style: TextStyle(
                // color: Colors.grey[600],
                // fontSize: 15,
                //fontStyle: FontStyle.italic,
                // fontWeight: FontWeight.w600,
                //letterSpacing: 0.5
                // ),
                // ),
                InkWell(
                  onTap: () {
                    _selectDate(context);
                  },
                  // child: //Container(
                  // width: MediaQuery.of(context).size.width / 1.7,
                  // height: MediaQuery.of(context).size.height / 9,
                  //margin: EdgeInsets.only(top: 30),
                  //alignment: Alignment.center,
                  //decoration: BoxDecoration(color: Colors.grey[200]),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Choose Date'),
                    // style: TextStyle(fontSize: 20),
                    //textAlign: TextAlign.center,
                    enabled: false,
                    // keyboardType: TextInputType.text,
                    controller: _dateController,
                    onSaved: (String val) {
                      _setDate = val;
                    },
                    // decoration: InputDecoration(
                    //labelText: Choose Date,
                    // disabledBorder:
                    //UnderlineInputBorder(borderSide: BorderSide.none),
                    //labelText: 'Choose Date',
                    //contentPadding: EdgeInsets.only(top: 0.0),
                    // ),
                  ),
                ),
                //),

                InkWell(
                  onTap: () {
                    _selectTime(context);
                  },
                  child: Container(
                    // margin: EdgeInsets.only(top: 30),
                    // width: _width / 1.7,
                    //height: _height / 9,
                    //alignment: Alignment.center,
                    // decoration: BoxDecoration(color: Colors.grey[200]),
                    child: TextFormField(
                      //style: TextStyle(fontSize: 40),
                      //textAlign: TextAlign.center,
                      onSaved: (String val) {
                        _setTime = val;
                      },
                      enabled: false,
                      //keyboardType: TextInputType.text,
                      controller: _timeController,
                      decoration: InputDecoration(
                        hintText: 'Choose time',
                        //disabledBorder:
                        // UnderlineInputBorder(borderSide: BorderSide.none),
                        // labelText: 'Time',
                        // contentPadding: EdgeInsets.all(5)),
                      ),
                    ),
                  ),
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
              child: Text('CREATE'),
            ),
          ],
        );
      },
    );
  }

  void startModal(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return Container(
          height: MediaQuery.of(context).size.height * .18,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              // Card(
              //elevation: 2,
              ListTile(
                title: Text(
                  'Create Appointments',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  createAppt(context);
                },
              ),

              //),
              //Card(
              // elevation: 2,

              ListTile(
                title: Text(
                  'Add Teacher',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  startJoining(context);
                },
              ),

              //),
            ],
          ),
        );
      },
    );
  }

  // Widget buildListTile(String title, IconData icon) {
  //return ListTile(
  // leading: Icon(
  // icon,
  //size: 20,
  //),
  // title: Text(title),
  // onTap: () {},
  // );
  // }
  Widget getTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 14, top: 30),
      child: Text(
        title,
        //textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget getSubTitle(String subTitle) {
    return Padding(
      padding: EdgeInsets.only(left: 23, top: 5),
      child: Text(
        subTitle,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    );
  }

  String _setTime, _setDate;

  String _hour, _minute, _time;

  String dateTime;

  DateTime selectedDate = DateTime.now();

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat.yMd().format(selectedDate);
      });
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null)
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = _hour + ' : ' + _minute;
        _timeController.text = _time;
        _timeController.text = formatDate(
            DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
            [hh, ':', nn, " ", am]).toString();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserProfile()),
              );
            },
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
            color: Colors.black,
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: double.infinity,
            child: InkWell(
              splashColor: Colors.grey[700],
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.green, Colors.lightGreenAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                        //color: Colors.blue[100],
                      ),
                    ),
                    Expanded(
                      flex: 15,
                      child: Container(
                        //color: Colors.white,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              getTitle('Scheduled Appointments'),
                              getSubTitle('Check your scheduled appointments!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: double.infinity,
            child: InkWell(
              splashColor: Colors.grey[700],
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.lightBlue, Colors.blue[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 15,
                      child: Container(
                        //color: Colors.white,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 21, top: 30),
                                child: Text(
                                  'Requested Appointments',
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 23, top: 5),
                                child: Text(
                                  'Check your requested appointments!',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              // getTitle('Requested Appointments'),
                              //getSubTitle('Check your requested appointments!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: double.infinity,
            child: InkWell(
              splashColor: Colors.grey[700],
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.red, Colors.orangeAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 15,
                      child: Container(
                        //color: Colors.white,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              getTitle('Missed Appointments'),
                              getSubTitle('Check your missed appointments!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //  buildListTile('Accepted Appointments', Icons.arrow_right),
          // buildListTile('Requested Appointments', Icons.arrow_right),
          // buildListTile('Missed Appointments', Icons.arrow_right),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          startModal(context);
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
