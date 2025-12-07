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
      backgroundColor: const Color(0xFF0D0D0D),

      appBar: AppBar(
        title: const Text(
          "Profile Page",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1A1A1A),
        elevation: 10,
        shadowColor: Colors.redAccent.withOpacity(0.3),
      ),

      body: Center(
        child: Container(
          height: 360,
          width: 340,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF1A1A1A), Color(0xFF0F0F0F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                blurRadius: 25,
                offset: const Offset(0, 10),
                color: Colors.redAccent.withOpacity(0.3),
              ),
            ],
          ),

          child: Card(
            elevation: 10,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),

            color: const Color(0xFF1E272E),

            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 30.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Updated Name Here
                  Text(
                    "Sumitro Chakrabarty",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                      color: Colors.redAccent.shade100,
                      shadows: const [
                        Shadow(blurRadius: 10, color: Colors.black),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    initialValue: "Student",
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: "Designation",
                      labelStyle: TextStyle(color: Colors.redAccent.shade200),
                      prefixIcon: Icon(
                        Icons.badge,
                        color: Colors.redAccent.shade200,
                      ),
                      filled: true,
                      fillColor: const Color(0xFF2A2A2A),

                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide.none,
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.red.shade900),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: Colors.redAccent.shade100,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent.shade700,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        elevation: 8,
                        shadowColor: Colors.redAccent.withOpacity(0.5),
                      ),
                      child: const Text(
                        "View Profile",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.2,
                        ),
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
