import 'package:flutter/material.dart';
import 'package:springhealth/screens/homepage.dart';


class NavBottom extends StatefulWidget {
  const NavBottom({Key? key}) : super(key: key);

  @override
  _NavBottomState createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(), //

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the selected page based on the index
    if (index != _selectedIndex) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => _widgetOptions[index]),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.notifications_none, size: 40),
                  onPressed: () {
                    // Add your notification functionality here
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 22,),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50), // Apply border radius
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 250,
                width: 390,
                color: Color(0xffd8f5f8), // Container color
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Insure',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

                            ),
                            SizedBox(height: 8),
                            Text(
                              'Helpful.',
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Easy. Safe \n',
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),                            ),
                            Text(
                              'A new experience in keeping \nyour family safe.',
                              style: TextStyle(fontSize: 13,),                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        height: 150,
                        width: 100,
                        child: Image.network(
                          'https://via.placeholder.com/150', // Add your image URL here
                          fit: BoxFit.cover, // Adjust the image fit as needed
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                6,
                    (index) {
                  if (index == 0) {
                    return InkWell(
                      onTap: () {
                        // Handle grid item tap
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff0c802b)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.green, // Set icon color
                              size: 40, // Set icon size
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Sign up/Renew'),
                        ],
                      ),
                    );
                  } else if (index == 1) {
                    return InkWell(
                      onTap: () {
                        // Handle grid item tap
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff0c802b)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.person,
                              color: Colors.green, // Set icon color
                              size: 40, // Set icon size
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Make claim'),
                        ],
                      ),
                    );
                  } else if (index == 2) {
                    return InkWell(
                      onTap: () {
                        // Handle grid item tap
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff0c802b)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.remove_red_eye,
                              color: Colors.green, // Set icon color
                              size: 40, // Set icon size
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Check status'),
                        ],
                      ),
                    );
                  } else if (index == 3) {
                    return InkWell(
                      onTap: () {
                        // Handle grid item tap
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff0c802b)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.payment,
                              color: Colors.green, // Set icon color
                              size: 40, // Set icon size
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Pay premium'),
                        ],
                      ),
                    );
                  } else if (index == 4) {
                    return InkWell(
                      onTap: () {
                        // Handle grid item tap
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff0c802b)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.balance,
                              color: Colors.green, // Set icon color
                              size: 40, // Set icon size
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Get quote'),
                        ],
                      ),
                    );
                  } else {
                    return InkWell(
                      onTap: () {
                        // Handle grid item tap
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff0c802b)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add_circle_outline_sharp,
                              color: Colors.orange, // Set icon color
                              size: 40, // Set icon size
                            ),
                          ),
                          SizedBox(height: 25),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),


      bottomNavigationBar: Container(
        height: 100, // Set the desired height
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Renew',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: 'Cards',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
          selectedFontSize: 14, // Increase the selected item font size
          unselectedFontSize: 14, // Increase the unselected item font size
          iconSize: 30,
        ),
      ),
    );
  }
}
