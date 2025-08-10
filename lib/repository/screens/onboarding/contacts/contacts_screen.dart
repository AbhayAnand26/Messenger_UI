import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/onboarding/uihelper.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContacts = [
    {
      'img': 'c1.png',
      'name': 'Athalia Putri',
      'LastSeen': 'Last Seen Yesterday',
    },
    {'img': 'c2.png', 'name': 'Erlan Sadewa', 'LastSeen': 'Online'},
    {
      'img': 'c3.png',
      'name': 'Midala Huera',
      'LastSeen': 'Last Seen 3 hours ago',
    },
    {'img': 'c4.png', 'name': 'Nafisa Gitari', 'LastSeen': 'Online'},
    {'img': 'c5.png', 'name': 'Raki Devon', 'LastSeen': 'Online'},
    {
      'img': 'c6.png',
      'name': 'Salsabila Akira',
      'LastSeen': 'Last Seen 30 minutes ago',
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
          text: 'Contacts',
          fontsize: 18,
          context: context,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: searchController,
              text: 'Search',
              textinputtype: TextInputType.text,
              context: context,
              icondata: Icons.search,
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListTile(
                      leading: UiHelper.CustomImage(
                        imgurl: arrContacts[index]['img'].toString(),
                      ),
                      title: UiHelper.CustomText(
                        text: arrContacts[index]['name'].toString(),
                        fontsize: 14,
                        context: context,
                        fontweight: FontWeight.w600,
                      ),
                      subtitle: UiHelper.CustomText(
                        text: arrContacts[index]['LastSeen'].toString(),
                        fontsize: 12,
                        context: context,
                        color: Color(0XFFADB5BD),
                      ),
                    ),
                  );
                },
                itemCount: arrContacts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
