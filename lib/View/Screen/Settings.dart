import 'package:flutter/material.dart';
import 'package:get/get.dart' show Get, GetNavigation;
import 'package:ott/View/Screen/Profilepages/Myaccount.dart';
import 'package:ott/View/Screen/Profilepages/Streamanddownload.dart';
import 'package:ott/View/Screen/Subscribtion.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          backgroundColor: const Color(0xFF0A0A0A),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                _buildHeader(width, height, orientation),
                
                // Settings List
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      _buildSettingsItem(
                        title: 'Stream & download',
                        subtitle: 'Manage quality and Wi-Fi',
                        width: width,
                        height: height,
                        orientation: orientation,
                        onTap: () 
                        {
                          Get.to(Streamanddownload());
                        },
                      ),
                      _buildDivider(width),
                      _buildSettingsItem(
                        title: 'Notifications',
                        subtitle: 'Off',
                        width: width,
                        height: height,
                        orientation: orientation,
                        onTap: () {},
                      ),
                      _buildDivider(width),
                      _buildSettingsItem(
                        title: 'Auto Play',
                        width: width,
                        height: height,
                        orientation: orientation,
                        onTap: () {},
                      ),
                      _buildDivider(width),
                      _buildSettingsItem(
                        title: 'Permissions',
                        subtitle: 'Control what you can watch',
                        width: width,
                        height: height,
                        orientation: orientation,
                        onTap: () {},
                      ),
                      _buildDivider(width),
                      _buildSettingsItem(
                        title: 'Registered devices',
                        subtitle: 'See all registered devices',
                        width: width,
                        height: height,
                        orientation: orientation,
                        onTap: () {},
                      ),
                      _buildDivider(width),
                      _buildSettingsItem(
                        title: 'Clear video search history',
                        width: width,
                        height: height,
                        orientation: orientation,
                        onTap: () {},
                      ),
                      _buildDivider(width),
                      _buildSettingsItem(
                        title: 'My Account',
                        width: width,
                        height: height,
                        orientation: orientation,
                        onTap: () {
                          Get.to(Myaccount());
                        },
                      ),
                      _buildDivider(width),
                      _buildSettingsItem(
                        title: 'Prime and subscriptions',
                        subtitle: 'Manage your subscriptions',
                        width: width,
                        height: height,
                        orientation: orientation,
                        onTap: () {
                          Get.to(Subscription());
                        },
                      ),
                      _buildDivider(width),
                      _buildSettingsItem(
                        title: 'Languages',
                        width: width,
                        height: height,
                        orientation: orientation,
                        onTap: () {},
                      ),
                      _buildDivider(width),
                      _buildSettingsItem(
                        title: 'Help & Feedback',
                        width: width,
                        height: height,
                        orientation: orientation,
                        onTap: () {},
                      ),
                      _buildDivider(width),
                      _buildSettingsItem(
                        title: 'About & Legal',
                        width: width,
                        height: height,
                        orientation: orientation,
                        onTap: () {},
                      ),
                      _buildDivider(width),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader(double width, double height, Orientation orientation) {
    return Padding(
      padding: EdgeInsets.all(width * 0.04),
      child: Text(
        'Settings',
        style: TextStyle(
          color: Colors.white,
          fontSize: orientation == Orientation.portrait 
              ? width * 0.08 
              : width * 0.05,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildSettingsItem({
    required String title,
    String? subtitle,
    required double width,
    required double height,
    required Orientation orientation,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: orientation == Orientation.portrait 
              ? height * 0.02 
              : height * 0.025,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: orientation == Orientation.portrait 
                          ? width * 0.045 
                          : width * 0.028,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (subtitle != null) ...[
                    SizedBox(height: height * 0.005),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: orientation == Orientation.portrait 
                            ? width * 0.037 
                            : width * 0.023,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey[600],
              size: orientation == Orientation.portrait 
                  ? width * 0.06 
                  : width * 0.037,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider(double width) {
    return Divider(
      color: Colors.grey[900],
      height: 1,
      thickness: 1,
      indent: width * 0.04,
      endIndent: 0,
    );
  }
}