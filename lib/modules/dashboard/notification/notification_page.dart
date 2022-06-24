import 'package:aics/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: "Notifications",
        ),
        actions: [
          GestureDetector(
            child: Icon(Icons.cleaning_services),
            onTap: () {},
          ),
          SizedBox(width: 1.w),
          GestureDetector(
            child: Icon(Icons.volume_mute),
            onTap: () {},
          ),
          SizedBox(width: 1.w),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: CustomText(
                      text: 'Ok',
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  title: CustomText(
                    text: "your Pickup is Booked.",
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                  ),
                  trailing: CustomText(
                    text: "21.05",
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: const Divider(
                    thickness: 1,
                    color: Colors.black26,
                  ),
                );
              },
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
