import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppClass();
  }
}

class MyAppClass extends State<MyApp> {
  var questionIndex = 0;
  void ans() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "To Do",
      "Hello, Peter",
      "You are not Peter Parker",
      "You are Mazharul",
      "This is flutter",
      "Dart is troublemaker",
      "Avoid android studio",
      "Vs code is the best",
    ];
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      foregroundImage: AssetImage("image/icon.jpg"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("MAZHARUL")
                  ],
                ),
                decoration: BoxDecoration(color: Colors.cyan),
              ),
              Column(
                children: [
                  ListTile(
                    leading:
                        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                    title: Text("Home"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading:
                        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                    title: Text("Profile"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: IconButton(
                        onPressed: () {}, icon: Icon(Icons.settings)),
                    title: Text("Setting"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.warning_amber_outlined)),
                    title: Text("About"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading:
                        IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
                    title: Text("Sign Out"),
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          backgroundColor: Colors.orange[200],
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      foregroundImage: AssetImage('image/icon.jpg'),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Mazharul",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                          Text(
                            "App Developer",
                            style: TextStyle(color: Colors.brown),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(150)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: Text(
                    "My Tasks",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 130,
                ),
                SizedBox(
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.calendar_today),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (questionIndex == 7) {
                        questionIndex = 0;
                      } else {
                        questionIndex = questionIndex + 1;
                      }
                    });
                  },
                  child: Icon(Icons.alarm),
                  backgroundColor: Colors.red[400],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Text(
                          question[questionIndex],
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        width: 300,
                      ),
                      SizedBox(
                        child: Text("5 task now, 1 started"),
                        width: 300,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.blur_circular),
                  backgroundColor: Colors.yellow[700],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Text(
                          "In Progress",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        width: 300,
                      ),
                      SizedBox(
                        child: Text("1 task now, 1 started"),
                        width: 300,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.done_outline),
                  backgroundColor: Colors.indigo[600],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Text(
                          "Done",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        width: 300,
                      ),
                      SizedBox(
                        child: Text("18 task now, 13 started"),
                        width: 300,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                child: Text(
                  "Active Projects",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 210,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.cyan[800]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Column(
                          children: [
                            Text(
                              "Medical App",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              "9 hours progress",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 210,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.greenAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Column(
                          children: [
                            Text(
                              "Medical App",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              "9 hours progress",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 210,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.blueAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Column(
                          children: [
                            Text(
                              "Medical App",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              "9 hours progress",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 210,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.yellow),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Column(
                          children: [
                            Text(
                              "Medical App",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              "9 hours progress",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 210,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.red[700]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Column(
                          children: [
                            Text(
                              "History Notes",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              "20 hours progress",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 210,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.limeAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Column(
                          children: [
                            Text(
                              "Medical App",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              "9 hours progress",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 210,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.blueGrey),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Column(
                          children: [
                            Text(
                              "Medical App",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              "9 hours progress",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 210,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.deepOrangeAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Column(
                          children: [
                            Text(
                              "Medical App",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              "9 hours progress",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
