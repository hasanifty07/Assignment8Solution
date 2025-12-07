import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D), // dark background

      appBar: AppBar(
        title: const Text(
          "Profile Page",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
        elevation: 10,
        shadowColor: const Color.fromARGB(255, 153, 110, 110),
      ),

      body: Center(
        child: Container(
          height: 340,
          width: 320,

          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF1A1A1A), Color(0xFF0F0F0F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(0), // sharp edges
            boxShadow: const [
              BoxShadow(
                blurRadius: 20,
                offset: Offset(0, 10),
                color: Color.fromARGB(137, 207, 30, 30),
              ),
            ],
          ),

          child: Card(
            elevation: 15,
            shadowColor: const Color.fromARGB(255, 131, 129, 129),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0), // sharp edges
            ),
            color: const Color.fromARGB(
              255,
              37,
              88,
              138,
            ), // dark grey-blue vibe

            child: Padding(
              padding: const EdgeInsets.all(22.0),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter Details",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.3,
                      color: const Color.fromARGB(
                        255,
                        145,
                        19,
                        124,
                      ), // <<< changed to red
                      shadows: const [
                        Shadow(blurRadius: 8, color: Colors.black87),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Colors.redAccent.shade200, // <<< changed to red
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.redAccent.shade200, // <<< changed to red
                      ),

                      filled: true,
                      fillColor: const Color(0xFF2A2A2A),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0), // sharp
                        borderSide: const BorderSide(
                          color: Colors.redAccent, // <<< changed to red
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0), // sharp
                        borderSide: BorderSide(
                          color:
                              Colors.red.shade700, // <<< changed to darker red
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0), // sharp
                        borderSide: BorderSide(
                          color: Colors.redAccent.shade100, // <<< bright red
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.redAccent.shade200, // <<< red button
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 40,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0), // sharp
                      ),
                      elevation: 12,
                      shadowColor: Colors.redAccent.shade100, // <<< red shadow
                    ),
                    child: const Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black, // black text
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
