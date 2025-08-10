import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/onboarding/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget{
  var arrMore = [
    {
      'icon' : Icons.person,
      'text' : 'Account'
    },
    {
      'icon' : CupertinoIcons.chat_bubble,
      'text' : 'Chats'
    },
    {
      'icon' : Icons.sunny,
      'text' : 'Appereance'
    },
    {
      'icon' : CupertinoIcons.bell,
      'text' : 'Notification'
    },
    {
      'icon' : Icons.privacy_tip_outlined,
      'text' : 'Privacy'
    },
    {
      'icon' : Icons.folder_open,
      'text' : 'Data usage'
    },
    {
      'icon' : Icons.help_outline,
      'text' : 'Help'
    },
    {
      'icon' : Icons.mail_outline,
      'text' : 'Invite Your friends'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness==Brightness.dark ? AppColors.scaffolddark : AppColors.scaffoldlight,
        title: UiHelper.CustomText(text: 'More', fontsize: 18, context: context,fontweight: FontWeight.bold,fontfamily: 'bold'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Theme.of(context).brightness==Brightness.dark ? UiHelper.CustomImage(imgurl: 'm1.png') : UiHelper.CustomImage(imgurl: 'm2.png'),
            title: UiHelper.CustomText(text: 'Sujal Dave', fontsize: 15, context: context, fontweight: FontWeight.bold),
            subtitle: UiHelper.CustomText(text: '+62 1309 - 1710 - 1920', fontsize: 12, context: context,color: Color(0XFFADB5BD)),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(arrMore[index]['icon'] as IconData,color: Theme.of(context).brightness==Brightness.dark ? AppColors.icondarkmode : AppColors.iconlightmode,),
                  title: UiHelper.CustomText(text: arrMore[index]['text'].toString(), fontsize: 14, context: context),
                  trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                ),
              );
            },itemCount: arrMore.length,),
          )
        ],
      ),
    );
  }

}