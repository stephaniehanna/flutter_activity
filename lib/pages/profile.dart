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

  Widget sectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 19.5,
          fontWeight: FontWeight.bold,
          color: Color(0xff333333),
        ),
      ),
    );
  }

  Widget sectionText(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 15, color: Color(0xff555555)),
      textAlign: TextAlign.justify,
    );
  }

  Widget infoTile(IconData icon, String text) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xff9DCEFF)),
      title: Text(text),
    );
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
                    'Hanna Stephanie A. Bacarro',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff333333),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '💻 BSIT Student',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(thickness: 1),
                  const SizedBox(height: 10),

                  sectionTitle('About'),
                  sectionText(
                    'An ambitious but procrastinating student fueled by 🥟 siomai and big dreams. Loves to grow stronger 💪 and laugh along the way.',
                  ),

                  const SizedBox(height: 20),

                  sectionTitle('Goals'),
                  sectionText(
                    'To stay consistent with fitness routines, develop a stronger body and mindset 🧠, and turn small efforts into lasting progress.',
                  ),

                  const SizedBox(height: 20),

                  sectionTitle('Meal Preference'),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.pink.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: const [
                              Icon(Icons.free_breakfast, color: Colors.pink),
                              SizedBox(height: 8),
                              Text(
                                'Breakfast',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('🥣 Oats + Banana'),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: const [
                              Icon(Icons.lunch_dining, color: Colors.green),
                              SizedBox(height: 8),
                              Text(
                                'Lunch',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('🍚 Rice + Veggies'),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: const [
                              Icon(Icons.dinner_dining, color: Colors.blue),
                              SizedBox(height: 8),
                              Text(
                                'Dinner',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('🥟 Siomai + Soup'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  sectionTitle('Contact Information'),
                  const SizedBox(height: 10),
                  infoTile(Icons.phone_iphone_rounded, '+63 909 362 4468'),
                  infoTile(Icons.email_outlined, 'bacarrohanna@email.com'),
                  infoTile(
                    Icons.link_rounded,
                    'linkedin.com/in/hannastephanie',
                  ),
                  infoTile(
                    Icons.location_on_outlined,
                    '📍 Cudian, Ivisan Capiz',
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
