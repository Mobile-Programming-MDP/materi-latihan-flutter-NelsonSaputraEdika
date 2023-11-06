import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String fullName = 'Nelson Saputra Edika';
  String userName = 'nelson';
  String email = 'nelsonsaputraedika_2226250034@mhs.mdp.ac.id';
  String aboutMe =

      'shwaygwuagwuaudbcuabdcuhbacajwkajmwknakwndkjbawjdbhjawbdjhvawudvjavwdjhvawjhdvajhwvdjhvawjhdvajwddabwdjkbakjwbdkjbbdkbakjdbakdbkabdbad';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                radius: 70, // Ukuran lingkaran profil
                backgroundImage: NetworkImage('images/th.jpeg'),
              ),
            ),
            SizedBox(height: 22),
            Text(
              fullName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            Text(
              email,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(

              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
              ),
              child: Text(

                'Edit Profil',
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 18),
            Align(

              alignment: Alignment.centerLeft,
              child: Text(
                'About Me',

                style: TextStyle(
                  
                  color: Colors.white,

                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                aboutMe,
                style: TextStyle(

                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'joined 30 oktober 2023',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.black,
                    ),
                    child: Text('Logout'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}