import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketapp/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 52),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What are ',
                    style: Styles.headLineStyle1.copyWith(fontSize: 35),
                  ),
                  Text(
                    'you looking for?',
                    style: Styles.headLineStyle1.copyWith(fontSize: 35),
                  ),
                  const Gap(25),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade300),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                          height: 30,
                          width: 175,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Text('AirlineTickets'),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 60, vertical: 4),
                          height: 30,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('Hotels'),
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_airplane_filled,
                            color: Color(0xFFBFC205)),
                        Text('Departure')
                      ],
                    ),
                  ),
                  const Gap(12),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_airplane_filled,
                            color: Color(0xFFBFC205)),
                        Text('Arrival')
                      ],
                    ),
                  ),
                  const Gap(15),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigo),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Find tickets',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const Gap(15),
                  Row(
                    children: [
                      Text(
                        'Upcoming Flights',
                        style: Styles.headLineStyle2,
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'View all',
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ),
                      )
                    ],
                  ),
                  const Gap(15),
                  Container(
                    height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                              height:370,
                              width: 160,
                              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                    height:175,
                                    width: 160,
                                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.green
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Discount', style: Styles.headLineStyle1.copyWith(color: Colors.white),),
                                        Text('for survey',style: Styles.headLineStyle1.copyWith(color: Colors.white)),
                                        const Gap(9),
                                        Text('Take the survey about out services and get a discount', style: Styles.textStyle.copyWith(color: Colors.white),)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height:175,
                                    width: 160,
                                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.orange
                                    ),
                                  ),
                                ],
                              )
                            )

                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ]));
  }
}
