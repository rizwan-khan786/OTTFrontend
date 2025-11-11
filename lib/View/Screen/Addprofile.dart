import 'package:flutter/material.dart';

class Addprofile extends StatefulWidget {
  const Addprofile({super.key});

  @override
  State<Addprofile> createState() => _AddprofileState();
}

class _AddprofileState extends State<Addprofile> {
  final TextEditingController _nameController = TextEditingController();
  bool _isKidsProfile = false;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        double height = MediaQuery.of(context).size.height;
        double width = MediaQuery.of(context).size.width;
        bool isLandscape = orientation == Orientation.landscape;

        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                height: isLandscape ? null : height - MediaQuery.of(context).padding.top,
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.07,
                  vertical: height * 0.02,
                ),
                child: Column(
                  mainAxisAlignment: isLandscape ? MainAxisAlignment.start : MainAxisAlignment.spaceBetween,
                  children: [
                    // Top section with profile and form
                    Column(
                      children: [
                        // "New" text
                        Text(
                          'New',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.065,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: height * 0.04),

                        // Profile avatar
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: width * 0.32,
                              height: width * 0.32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF1E8E5E),
                                    Color(0xFF26A269),
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.person,
                                  size: width * 0.22,
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),

                        // "Change" text
                        Text(
                          'Change',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: width * 0.045,
                          ),
                        ),
                        SizedBox(height: height * 0.04),

                        // Name input field
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width * 0.01),
                          ),
                          child: TextField(
                            controller: _nameController,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: width * 0.045,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter name',
                              hintStyle: TextStyle(
                                color: Colors.grey[500],
                                fontSize: width * 0.045,
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: width * 0.04,
                                vertical: height * 0.022,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.03),

                        // Kids profile toggle
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kid's profile?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.045,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: height * 0.005),
                                GestureDetector(
                                  onTap: () {
                                    // Add learn more functionality
                                  },
                                  child: Text(
                                    'Learn more',
                                    style: TextStyle(
                                      color: Color(0xFF0E7EE0),
                                      fontSize: width * 0.04,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Transform.scale(
                              scale: width * 0.002,
                              child: Switch(
                                value: _isKidsProfile,
                                onChanged: (value) {
                                  setState(() {
                                    _isKidsProfile = value;
                                  });
                                },
                                activeColor: Colors.white,
                                activeTrackColor: Color(0xFF0E7EE0),
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Save button at bottom
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: isLandscape ? height * 0.02 : height * 0.03,
                        top: isLandscape ? height * 0.04 : 0,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Add save functionality
                          if (_nameController.text.isNotEmpty) {
                            // Save profile logic
                            Navigator.pop(context);
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.022,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[700]!,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(width * 0.01),
                          ),
                          child: Center(
                            child: Text(
                              'Save',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: width * 0.048,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}