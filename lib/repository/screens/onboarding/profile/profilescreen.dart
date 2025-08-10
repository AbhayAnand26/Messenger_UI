import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/onboarding/bottomnav/bottom_navigagtion_screen.dart';
import 'package:chatapp/repository/screens/onboarding/uihelper.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: UiHelper.CustomText(
          text: 'Your Profile',
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
          fontfamily: 'bold',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgurl: "a3.png")
                : UiHelper.CustomImage(imgurl: "a2.png"),
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: firstnameController,
              text: 'First Name (required)',
              textinputtype: TextInputType.text,
              context: context, icondata: Icons.person,
            ),
            SizedBox(height: 10),
            UiHelper.CustomTextField(
              controller: lastnameController,
              text: 'Last Name (required)',
              textinputtype: TextInputType.text,
              context: context, icondata: Icons.person,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        buttonname: 'Save',
        callback: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomNavScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
