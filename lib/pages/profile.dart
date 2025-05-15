import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/icons/avatar.webp'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Hanna Stephanie Bacarro',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff333333),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'bacarrohanna@email.com',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 10),

                  // Degree and University
                  ListTile(
                    leading: const Icon(Icons.school, color: Color(0xff9DCEFF)),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Bachelor of Science in Information Technology',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Filamer Christian University',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'An ambitious but procrastinating IT student fueled by siomai and big dreams. Always striving to improve, with a little sense of humor and a love for joking around. Passionate about learning new tech and making the most out of every moment in college.',
                    style: TextStyle(fontSize: 15, color: Color(0xff555555)),
                    textAlign: TextAlign.justify,
                  ),

                  const SizedBox(height: 20),

                  // Swapped: Goals first
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Goals',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'To graduate strong despite the chaos, grow as a skilled IT professional, and turn big dreams into impactful tech innovations—all while keeping a good sense of humor.',
                    style: TextStyle(fontSize: 15, color: Color(0xff555555)),
                    textAlign: TextAlign.justify,
                  ),

                  const SizedBox(height: 20),

                  // Then Contact Information with email changed to GitHub
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Contact Information',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: const Icon(Icons.phone, color: Color(0xff9DCEFF)),
                    title: const Text('+63 909 362 4468'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.link, color: Color(0xff9DCEFF)),
                    title: const Text('linkedin.com/in/hannastephanie'),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.code,
                      color: Color(0xff9DCEFF),
                    ), // changed icon to code for GitHub
                    title: const Text(
                      'github.com/hannastephanie',
                    ), // changed email to github
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xff9DCEFF),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
      ),
    );
  }
}
