import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/onboarding/uihelper.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrChats = [
    {
      'img': 'c1.png',
      'name': 'Athalia Puri',
      'text': 'Good morning, did You sleep well?',
      'date': 'Today',
      'msgcount': '1',
    },
    {
      'img': 'c5.png',
      'name': 'Raki Devon',
      'text': 'How is it going?',
      'date': '17/6',
      'msgcount': '0',
    },

    {
      'img': 'c2.png',
      'name': 'Erlan Sadewa',
      'text': 'Aight, noted',
      'date': '17/6',
      'msgcount': '1',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
          text: 'Chats',
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_comment_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.wrap_text_rounded)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 30),
              UiHelper.CustomImage(imgurl: 'cc1.png'),
              SizedBox(width: 20),
              UiHelper.CustomImage(imgurl: 'cc2.png'),
              SizedBox(width: 20),
              UiHelper.CustomImage(imgurl: 'cc3.png'),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              SizedBox(width: 30),
              UiHelper.CustomText(
                text: 'Your Story',
                fontsize: 10,
                context: context,
                fontfamily: 'bold',
                fontweight: FontWeight.bold,
              ),
              SizedBox(width: 20),
              UiHelper.CustomText(
                text: 'Midala Hu...',
                fontsize: 10,
                context: context,
                fontfamily: 'bold',
                fontweight: FontWeight.bold,
              ),
              SizedBox(width: 20),
              UiHelper.CustomText(
                text: 'Salsabila...',
                fontsize: 10,
                context: context,
                fontfamily: 'bold',
                fontweight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(height: 20,),
          Divider(color: Color(0XFFADB5BD)),
          SizedBox(height: 30),
          UiHelper.CustomTextField(
            controller: searchController,
            text: 'Search',
            textinputtype: TextInputType.text,
            context: context,
            icondata: Icons.search,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: UiHelper.CustomImage(
                    imgurl: arrChats[index]['img'].toString(),
                  ),
                  title: UiHelper.CustomText(
                    text: arrChats[index]['name'].toString(),
                    fontsize: 14,
                    context: context,
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: arrChats[index]['text'].toString(),
                    fontsize: 12,
                    context: context,
                    color: Color(0XFFADB5BD),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(
                        text: arrChats[index]['date'].toString(),
                        fontsize: 10,
                        context: context,
                        color: Color(0XFFA4A4A4),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Color(0XFFD2D5F9),
                        child: UiHelper.CustomText(
                          text: arrChats[index]['msgcount'].toString(),
                          fontsize: 10,
                          context: context,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrChats.length,
            ),
          ),
        ],
      ),
    );
  }
}
