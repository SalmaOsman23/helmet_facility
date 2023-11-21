import 'package:flutter/material.dart';
import 'package:helmet_facility/data_models/posts_dm.dart';
import 'package:helmet_facility/shared/app_assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const String routeName = "Home Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black, size: 40),
      ),
      drawer: buildDrawer(context),
      bottomNavigationBar: buildBottomNavigationBar(context),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    AppAssets.homeimage,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: PostsDM.list.length,
                    itemBuilder: (context, index) {
                      return PostContainer(PostsDM.list[index]['imagePath'],
                          PostsDM.list[index]['cityName'], context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff212121),
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        AppAssets.person,
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Text(
                  "ID: 2043",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          buildDrawerRow(FontAwesomeIcons.bullhorn, "Announcement", () {}),
          buildDrawerRow(FontAwesomeIcons.addressBook, "Contacts", () {}),
          buildDrawerRow(FontAwesomeIcons.building, "Units", () {}),
          buildDrawerRow(
              FontAwesomeIcons.handsHoldingCircle, "Services", () {}),
          buildDrawerRow(FontAwesomeIcons.fileInvoice, "Invoices", () {}),
          buildDrawerRow(FontAwesomeIcons.qrcode, "Visitor QR", () {}),
          buildDrawerRow(FontAwesomeIcons.ticket, "Tickets", () {}),
          buildDrawerRow(
              FontAwesomeIcons.headphonesSimple, "Contact Us", () {}),
          buildDrawerRow(FontAwesomeIcons.gears, "Support", () {}),
          Spacer(),
          Divider(
            thickness: 6,
            color: Colors.white,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Change Password",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          )
        ],
      ),
    );
  }

  buildDrawerRow(IconData icon, String title, void Function()? onClick) {
    return InkWell(
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Icon(
              icon,
              color: Colors.yellow,
              size: 30,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget PostContainer(String image, String cityName, BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Color(0xffCCCCCC),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(22)),
            child: Image.asset(
              image,
              height: MediaQuery.of(context).size.height * .15,
              fit: BoxFit.fill,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                cityName,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    backgroundColor: Colors.yellow,
                  ),
                  child: Text(
                    "Details",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ],
      ),
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(canvasColor: Color(0xff212121)),
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.building, size: 30),
          label: "Units",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.addressBook, size: 30),
          label: "Contacts",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.home, size: 30),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.fileInvoice, size: 30),
          label: "Invoices",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.handsHoldingCircle, size: 30),
          label: "Services",
        ),
      ],
    ),
  );

}
