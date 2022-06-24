import 'package:aics/theam/app_color.dart';
import 'package:aics/theam/image.dart';
import 'package:aics/widget/custom_text.dart';
import 'package:aics/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Account extends StatelessWidget {
  Account({Key? key}) : super(key: key);
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endtDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _headerItem(
                  title: "Allowed Limit",
                  price: "50,000",
                ),
                _headerItem(
                  title: "Bill Due",
                  price: "38,000",
                ),
                _headerItem(
                  title: "Unsued Limit",
                  price: "12,000",
                ),
              ],
            ),
            SizedBox(height: 3.h),
            _table(),
            SizedBox(height: 3.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _mackpaymentAndTotal(
                    text: "MACK PAYMENT",
                    onTap: () {},
                    color: AppColor.themColor,
                    textcolor: Colors.white),
                _mackpaymentAndTotal(
                  text: "Totle  =  28000",
                  textcolor: Colors.black,
                  onTap: () {},
                  color: AppColor.whiteColor,
                ),
              ],
            ),
            SizedBox(height: 3.h),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                boxShadow: const [
                  BoxShadow(
                    color: AppColor.boxShadow,
                    offset: Offset(1, 1),
                    blurRadius: 10,
                  )
                ],
                border: Border.all(color: AppColor.themColor, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Column(
                  children: [
                    _accountStatement(text: "ACCOUNT STATEMENT"),
                    _selectdate(
                      controller: _startDateController,
                      hintText: "Statement Start Date",
                    ),
                    _selectdate(
                      controller: _endtDateController,
                      hintText: "Statement End Date",
                    ),
                    _accountStatement(text: "SUBMIT", onTap: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _accountStatement({
    required String text,
    final GestureTapCallback? onTap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 2.h,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: AppColor.boxShadow,
                  offset: Offset(1, 2),
                  blurRadius: 8,
                )
              ],
              border: Border.all(color: AppColor.whiteColor, width: 2),
              color: AppColor.themColor,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: CustomText(
              text: text,
              color: AppColor.whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }

  _headerItem({
    required String title,
    required String price,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 13.sp, color: Colors.black54),
        ),
        SizedBox(height: 0.5.h),
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0.7.h, horizontal: 4.w),
            child: Row(
              children: [
                Image(height: 2.h, image: const AssetImage(AppImage.rupee)),
                Text(
                  price,
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: AppColor.boxShadow,
                  offset: Offset(1, 2),
                  blurRadius: 8,
                )
              ],
              border: Border.all(color: AppColor.themColor, width: 2),
              borderRadius: BorderRadius.circular(20)),
        ),
      ],
    );
  }

  _table() {
    return Column(
      children: [
        Table(
          children: [
            TableRow(
              children: [
                CustomText(
                  text: "PARTY",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                ),
                SizedBox(width: 4.w),
                CustomText(
                  text: "DATE",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                ),
                CustomText(
                  text: "AWB",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                ),
                CustomText(
                  text: "AMT",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                ),
              ],
            ),
          ],
        ),
        Divider(
          height: 0.5.h,
          thickness: 1,
        ),
        const Tabler(
          partyName: "Roop Malin",
          date: "20.05",
          awb: "3000121",
          amt: "8000",
        ),
        Divider(
          height: 0.5.h,
          thickness: 1,
        ),
        const Tabler(
          partyName: "Matieum Fashion",
          date: "20.05",
          awb: "3000121",
          amt: "10000",
        ),
        Divider(
          height: 0.5.h,
          thickness: 1,
        ),
        const Tabler(
          partyName: "Seasons Apparel",
          date: "20.05",
          awb: "3000121",
          amt: "11000",
        ),
        Divider(
          height: 0.5.h,
          thickness: 1,
        ),
        const Tabler(
          partyName: "true Fashion",
          date: "20.05",
          awb: "3000121",
          amt: "18000",
        ),
      ],
    );
  }

  _mackpaymentAndTotal({
    final GestureTapCallback? onTap,
    final String text = "",
    final Color? color,
    final Color? textcolor,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              color: textcolor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          boxShadow: const [
            BoxShadow(
              color: AppColor.boxShadow,
              offset: Offset(1, 2),
              blurRadius: 8,
            )
          ],
          border: Border.all(color: AppColor.themColor, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  _selectdate({
    required String? hintText,
    required TextEditingController? controller,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.7.h, horizontal: 4.w),
      child: Container(
        height: 5.h,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: AppColor.boxShadow,
              offset: Offset(1, 2),
              blurRadius: 8,
            ),
          ],
        ),
        child: CommonTextField(
          onChanged: (value) {},
          contentPadding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 5.w,
          ),
          keyboardType: TextInputType.number,
          controller: controller,
          autoValidateMode: AutovalidateMode.onUserInteraction,
          hintText: hintText,
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height / 3);
    path.quadraticBezierTo(size.width / 4, 0, size.width / 2, 0);
    path.quadraticBezierTo(size.width / 1.35, 0, size.width, size.height / 3);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class Tabler extends StatelessWidget {
  final String partyName;
  final String date;
  final String awb;
  final String amt;

  const Tabler({
    Key? key,
    required this.partyName,
    required this.date,
    required this.awb,
    required this.amt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          CustomText(
            text: partyName,
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
          ),
          SizedBox(width: 4.w),
          CustomText(
            text: date,
            fontSize: 13.sp,
            // fontWeight: FontWeight.w900,
            color: Colors.black45,
          ),
          CustomText(
            text: awb,
            fontSize: 13.sp,
            // fontWeight: FontWeight.w900,
            color: Colors.black45,
          ),
          Row(
            children: [
              Image(
                height: 1.2.h,
                image: const AssetImage(AppImage.rupee),
              ),
              CustomText(
                text: amt,
                fontSize: 13.sp,
                // fontWeight: FontWeight.w900,
                color: Colors.black45,
              ),
            ],
          ),
        ]),
      ],
    );
  }
}
