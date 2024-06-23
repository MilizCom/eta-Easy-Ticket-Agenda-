// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Container(
            padding: EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 54,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 96,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.black,
                    ),
                    child: Text(
                      'History',
                      style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 42, vertical: 25),
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 2),
                          width: double.infinity,
                          height: 141,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 14,
                              ),
                              SizedBox(
                                height: 102,
                                width: 6,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18.0),
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width:
                                      14), // Jarak dari pinggir card ke SizedBox
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Agenda name',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 2),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          color: Colors.black,
                                        ),
                                        child: Text(
                                          "text",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 27),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.verified,
                                        size: 20.0,
                                      ),
                                      SizedBox(
                                          width:
                                              4), // Jarak antara icon dan teks
                                      Text(
                                        'ID Verification',
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.access_time,
                                        size: 20.0,
                                      ),
                                      SizedBox(
                                          width:
                                              4), // Jarak antara icon dan teks
                                      Text(
                                        '31-12-2024 | 18:00 WITA',
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        size: 20.0,
                                      ),
                                      SizedBox(
                                          width:
                                              4), // Jarak antara icon dan teks
                                      Text(
                                        'Location',
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 11),
                              Card(
                                elevation: 4.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                  width: 73,
                                  height: 83, // Adjust the height as needed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.insert_photo_outlined,
                                          size: 44.0,
                                        ),
                                      ),
                                      Text("Event logo",
                                          style: TextStyle(fontSize: 5)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 54,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 96,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.black,
                    ),
                    child: Text(
                      'Events',
                      style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 42, vertical: 25),
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 2),
                          width: double.infinity,
                          height: 141,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 14,
                              ),
                              SizedBox(
                                height: 102,
                                width: 6,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18.0),
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width:
                                      14), // Jarak dari pinggir card ke SizedBox
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Agenda name',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 2),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          color: Colors.black,
                                        ),
                                        child: Text(
                                          "text",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 27),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.verified,
                                        size: 20.0,
                                      ),
                                      SizedBox(
                                          width:
                                              4), // Jarak antara icon dan teks
                                      Text(
                                        'ID Verification',
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.access_time,
                                        size: 20.0,
                                      ),
                                      SizedBox(
                                          width:
                                              4), // Jarak antara icon dan teks
                                      Text(
                                        '31-12-2024 | 18:00 WITA',
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        size: 20.0,
                                      ),
                                      SizedBox(
                                          width:
                                              4), // Jarak antara icon dan teks
                                      Text(
                                        'Location',
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 11),
                              Card(
                                elevation: 4.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                  width: 73,
                                  height: 83, // Adjust the height as needed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.insert_photo_outlined,
                                          size: 44.0,
                                        ),
                                      ),
                                      Text("Event logo",
                                          style: TextStyle(fontSize: 5)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Colors.black),
                          height: 230,
                          width: 360,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 38,
                              ),
                              const Icon(
                                Icons.person_pin_outlined,
                                color: Colors.white,
                                size: 108.0,
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Full name",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Usernamemail@useremail.com",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 43,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Edit your information",
                                  style: TextStyle(color: Colors.black),
                                ),
                                style: ButtonStyle(
                                    minimumSize:
                                        MaterialStateProperty.all<Size>(
                                            Size(277, 73)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                              ),
                              SizedBox(
                                height: 62,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Setting",
                                  style: TextStyle(color: Colors.black),
                                ),
                                style: ButtonStyle(
                                    minimumSize:
                                        MaterialStateProperty.all<Size>(
                                            Size(277, 73)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black, // Active page color
        unselectedItemColor: Colors.grey, // Inactive page color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            label: "Explorer",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_history,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
