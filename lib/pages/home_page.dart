import 'package:bwa_chat/widget/group_tile.dart';
import 'package:flutter/material.dart';

import '../theme.dart';
import '../widget/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/image/profile.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Michael Angelica',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(color: lightBlueColor, fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: tittleTextStyle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: 'assets/image/people1.png',
                        name: 'Adi Nugraha',
                        text: 'Hello My Friend!',
                        time: '20.30',
                        unread: true,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ChatTile(
                        imageUrl: 'assets/image/people2.png',
                        name: 'Sarah',
                        text: 'i will be going to your home',
                        time: 'Now',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: tittleTextStyle,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/haldua');
                        },
                        child: GroupTile(
                            imageUrl: 'assets/icon/icon1.png',
                            name: 'Jakarta Fair',
                            text: 'why does everyone ca...',
                            time: '11.11',
                            unread: false),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      GroupTile(
                          imageUrl: 'assets/icon/icon2.png',
                          name: 'Angga',
                          text: 'here we can go...',
                          time: 'Now',
                          unread: true),
                      SizedBox(
                        height: 5,
                      ),
                      GroupTile(
                          imageUrl: 'assets/icon/icon3.png',
                          name: 'Bentley',
                          text: 'The Car which does not...',
                          time: '21.20',
                          unread: true)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
