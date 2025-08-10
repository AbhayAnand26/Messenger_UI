import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/onboarding/otp/otpscreen.dart';
import 'package:chatapp/repository/screens/onboarding/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness==Brightness.dark?AppColors.scaffolddark : AppColors.scaffoldlight,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "Enter your Phone Number",
              fontsize: 24,
              context: context,
              fontweight: FontWeight.bold,
              fontfamily: "Bold",
            ),
            SizedBox(
              height: 10,
            ),
            UiHelper.CustomText(
              text: "Please confirm your country code and enter",
              fontsize: 14,
              context: context,
            ),
            UiHelper.CustomText(
              text: "your phone number",
              fontsize: 14,
              context: context,
            ),
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: phoneController,
              text: 'Phone Number',
              textinputtype: TextInputType.number,
              context: context, icondata: Icons.phone,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(buttonname: 'Continue', callback: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => OtpPage()));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
