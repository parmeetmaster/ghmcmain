import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:ghmc/globals/globals.dart';
import 'package:ghmc/provider/login_provider/login_provider.dart';
import 'package:ghmc/screens/add_data/add_data_page.dart';
import 'package:ghmc/screens/complaint_box/complain_screen.dart';
import 'package:ghmc/screens/culvert/addCulvert.dart';
import 'package:ghmc/screens/culvert/culvertIssues.dart';
import 'package:ghmc/screens/maps/mapScreen.dart';
import 'package:ghmc/screens/vehicleHistory/absentVehicle.dart';
import 'package:ghmc/screens/vehicleHistory/logHistory.dart';
import 'package:ghmc/screens/gvp_bep/gvp_bvp_list.dart';
import 'package:ghmc/screens/password_screen/password_screen.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  late AwesomeDialog dialog;
  double drawer_item_text = 15;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFFAD1457),
                Color(0xFFAD801D9E),
              ],
            ),
          ),
          child: ListView(
            children: [
              Container(
                height: 220,
                width: double.infinity,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/ThingstoDoinTelangana.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${Globals.userData!.data!.firstName} ${Globals.userData!.data!.lastName ?? ""}",
                        style:
                            TextStyle(color: Color(0xFFAD801D9E), fontSize: 20),
                      ),
                      Text(
                        "${Globals.userData!.data!.mobileNumber ?? ""}",
                        style: TextStyle(
                          color: Color(0xFFAD801D9E),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              ///
              if (Globals.authority!.data!.first.home == true)
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 25,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(
                        fontSize: drawer_item_text, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

              ///
              if (Globals.authority!.data!.first.complaints == true)
                ListTile(
                  leading: Icon(
                    Icons.local_police,
                    color: Colors.white,
                    size: 25,
                  ),
                  title: Text(
                    "Complaint",
                    style: TextStyle(
                        fontSize: drawer_item_text, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ComplainScreen(),
                      ),
                    );
                  },
                ),

              ///
              if (Globals.authority!.data!.first.geoTagging == true)
                ListTile(
                  leading: Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  title: Text(
                    "Geo Tagging",
                    style: TextStyle(
                        fontSize: drawer_item_text, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (MapScreen()),
                      ),
                    );
                  },
                ),
              /*  if (Globals.userData!.data!.departmentId == "3" ||
                  Globals.userData!.data!.departmentId == "4")*/

              ///
              if (Globals.authority!.data!.first.dataEntry == true)
                ListTile(
                  leading: Icon(
                    Icons.library_books,
                    color: Colors.white,
                    size: 25,
                  ),
                  title: Text(
                    "Data Entry",
                    style: TextStyle(
                        fontSize: drawer_item_text, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (AddDataPage()),
                      ),
                    );
                  },
                ),
/*            if (Globals.userData!.data!.departmentId == "10" ||
                  Globals.userData!.data!.departmentId == "11" ||
                  Globals.userData!.data!.departmentId == "1")*/

              ///
              if (Globals.authority!.data!.first.addCulvert == true)
                ListTile(
                  leading: Icon(
                    Icons.linear_scale,
                    color: Colors.white,
                    size: 25,
                  ),
                  title: Text(
                    "Add Culvert",
                    style: TextStyle(
                        fontSize: drawer_item_text, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (AddCulvertScreen()),
                      ),
                    );
                  },
                ),

              ///
              if (Globals.authority!.data!.first.issueCulvert == true)
                ListTile(
                  leading: Icon(
                    Icons.home_repair_service,
                    color: Colors.white,
                    size: 25,
                  ),
                  title: Text(
                    "Issue Culvert",
                    style: TextStyle(
                        fontSize: drawer_item_text, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (CulvertIssueScreen()),
                      ),
                    );
                  },
                ),

              ///
              if (Globals.authority!.data!.first.logHistory == true)
                ListTile(
                  leading: Icon(
                    Icons.add_to_home_screen_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  title: Text(
                    "Log History",
                    style: TextStyle(
                        fontSize: drawer_item_text, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (VehicleHistory()),
                      ),
                    );
                  },
                ),

              ///
              if (Globals.authority!.data!.first.absentVehicles == true)
                ListTile(
                  leading: Icon(
                    Icons.agriculture_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                  title: Text(
                    "Absent Vehicle",
                    style: TextStyle(
                        fontSize: drawer_item_text, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (AbsentVehicle()),
                      ),
                    );
                  },
                ),

              ///
              if (Globals.authority!.data!.first.addGvpbep == true)
                ListTile(
                  leading: Icon(
                    Icons.directions_car_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                  title: Text(
                    "Add GVP/BEP",
                    style: TextStyle(
                        fontSize: drawer_item_text, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (GvpBepScreen()),
                      ),
                    );
                  },
                ),
              ListTile(
                leading: Icon(
                  Icons.vpn_key,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  "Change Password",
                  style: TextStyle(
                      fontSize: drawer_item_text, color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (ChangePasswordScreen()),
                    ),
                  );
                },
              ),
              // ListTile(
              //   leading: Icon(
              //     Icons.notifications_active_rounded,
              //     color: Colors.white,
              //     size: 25,
              //   ),
              //   title: Text(
              //     "Notifications",
              //     style:
              //         TextStyle(fontSize: drawer_item_text, color: Colors.white),
              //   ),
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => NotificationsScreen(),
              //       ),
              //     );
              //   },
              // ),
              ListTile(
                leading: Icon(
                  Icons.power_settings_new,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  "LogOut",
                  style: TextStyle(
                      fontSize: drawer_item_text, color: Colors.white),
                ),
                onTap: () {
                  dialog = AwesomeDialog(
                    context: context,
                    dialogType: DialogType.INFO,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'Logout',
                    desc: 'Do you really like to logout?',
                    btnCancelOnPress: () {
                      Navigator.of(context, rootNavigator: true).pop();
                    },
                    btnOkOnPress: () async {
                      await LoginProvider.getInstance(context).logout(context);
                    },
                  )..show();
                },
              ),
              // ListTile(
              //   leading: Icon(
              //     Icons.error,
              //     color: Colors.white,
              //     size: 25,
              //   ),
              //   title: Text(
              //     "Device Details",
              //     style:
              //         TextStyle(fontSize: drawer_item_text, color: Colors.white),
              //   ),
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => DeviceDetailsScreen(),
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
