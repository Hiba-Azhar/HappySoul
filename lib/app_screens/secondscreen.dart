import "package:flutter/material.dart";
import "crisisscreen.dart";
import "happychunksscreen.dart";

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
            gradient: LinearGradient(
              colors: [
                Color(0xFF04C399), // Start color
                Color(0xFF05A9D4), // End color
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          'Express Your Feelings',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFB1F3F3),
                  Color(0xFF8CEFBA),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Your main content here

              // Spacer to push the input field and buttons to the bottom
              Spacer(),

              // Container containing the input field
              Container(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF44A98E), // Start color (Green)
                        Color(0xFF20AFEA), // End color (Blue)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Message',
                      filled: true,
                      fillColor: Colors.transparent,
                      border: InputBorder.none, // Remove the underline
                    ), // Set to transparent as the gradient is in the outer container

                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.black, // Color of the typed text
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200,
                      // Size of the typed text
                    ),
                  ),
                ),
              ),

              // Row containing the two buttons
              Container(
                padding: EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CrisisScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 222, 65, 54),
                        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                      ),
                      child: Text(
                        'Crisis',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontFamily: 'Inter'),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HappyChunksScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 54, 152, 222),
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      ),
                      child: Text(
                        'Happy Chunks',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontFamily: 'Inter'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
