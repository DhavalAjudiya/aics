import 'package:aics/theam/app_color.dart';
import 'package:aics/utils/navigation_utils/navigation.dart';
import 'package:aics/utils/navigation_utils/routes.dart';
import 'package:flutter/material.dart';

class CreateCompanyProfile extends StatefulWidget {
  const CreateCompanyProfile({Key? key}) : super(key: key);

  @override
  State<CreateCompanyProfile> createState() => _CreateCompanyProfileState();
}

class _CreateCompanyProfileState extends State<CreateCompanyProfile> {
  int val = 1;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: screen.width * 0.03),
                Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (dynamic value) {
                    setState(() {
                      val = value;
                    });
                  },
                  activeColor: Colors.green,
                ),
                SizedBox(width: screen.width * 0.03),
                Text(
                  "COMPANY 1",
                  style: TextStyle(fontSize: 22),
                ),
                Spacer(),
                Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.indigo,
                ),
                SizedBox(width: screen.width * 0.03),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                SizedBox(width: screen.width * 0.03),
                Radio(
                  value: 2,
                  groupValue: val,
                  onChanged: (dynamic value) {
                    setState(() {
                      val = value;
                    });
                  },
                  activeColor: Colors.green,
                ),
                SizedBox(width: screen.width * 0.03),
                Text(
                  "COMPANY 2",
                  style: TextStyle(fontSize: 22),
                ),
                Spacer(),
                Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.indigo,
                ),
                SizedBox(width: screen.width * 0.03),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                SizedBox(width: screen.width * 0.03),
                Radio(
                  value: 3,
                  groupValue: val,
                  onChanged: (dynamic value) {
                    setState(() {
                      val = value;
                    });
                  },
                  activeColor: Colors.green,
                ),
                SizedBox(width: screen.width * 0.03),
                Text(
                  "COMPANY 3",
                  style: TextStyle(fontSize: 22),
                ),
                Spacer(),
                Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.indigo,
                ),
                SizedBox(width: screen.width * 0.03),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigation.pushNamed(Routes.profile);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "ADD COMPANY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                    color: AppColor.themColor,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SizedBox(height: screen.height * 0.07),
          ],
        ),
      ),
    );
  }
}
