// import 'package:flutter/cupertino.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketapp/screens/hotel_screen.dart';
import 'package:ticketapp/screens/ticket_view.dart';
import 'package:ticketapp/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle3,
                        ),
                        Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images/profileimage.png")),
                      ),
                    )
                  ],
                ),
                const Gap(20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFf4F6FD)),
                  // color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_filled,
                          color: Color(0xFFBFC205)),
                      Text('Search')
                    ],
                  ),
                ),
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Flight',
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                        onTap: () {
                          print('tapped');
                        },
                        child: Text(
                          'View all',
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ))
                  ],
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                TicketView(),
                TicketView()
              ],
            ),
          ),
          const Gap(15),
          Container(
            // padding: EdgeInsets.only(left:20,right: 20),
            // incase if both left and right having same padding we can use symmetric padding on horizontal
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:  Row(
              // can use spacer but mainaxisalignment can also be used
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Hotels',style: Styles.headLineStyle2,),
                 // const Spacer(),-v
                 // instead of spacer mainaxisalignment:mainaxisalignment.spacebetween get used
                 InkWell(
                   onTap: (){
                     print('Data');
                   },
                     child: Text(
                       'View all',
                       style: Styles.textStyle.copyWith(color: Styles.textColor)
                     ),
                 ),
               ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                HotelScreen(),
                HotelScreen(),
                HotelScreen(),
                // HotelScreen(imageName: "assets/images/image1.jpg"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
