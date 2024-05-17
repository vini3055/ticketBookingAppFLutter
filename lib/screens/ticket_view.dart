import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gap/gap.dart';
import 'package:ticketapp/utils/app_layout.dart';
import 'package:ticketapp/utils/app_styles.dart';
import 'package:ticketapp/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*showing the blue part of the card*/
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF526799),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              // color: Colors.red,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      // we can override the color headLineStyle3 using copyWith and inside what all the changes
                      // we need to be given
                      // NYC
                      Text(
                        'NYC',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      // const Spacer(), the Expanded Widget do the same like spacer
                      // it will equally distribute the elements inside the main container
                      // here its Row
                      Expanded(child: Container()),
                      // two circles ThickContainer
                      ThickContainer(),
                      // const Spacer(),
                      // doted lines between those two circles
                      Expanded(
                          child: Container(
                        child: Stack(children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                print(
                                    'the width is ${constraints.constrainWidth()}');
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.white),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                      )),
                      ThickContainer(),
                      // const Spacer(),
                      Expanded(child: Container()),
                      // LDN location
                      Text(
                        'LDN',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // children: [
                    //   Text('New-York', style: Styles.headLineStyle4.copyWith(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),),
                    //   const Spacer(),
                    //   Text('8H 30M', style: Styles.headLineStyle3.copyWith(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),),
                    //   const Spacer(),
                    //   Text('London',style: Styles.headLineStyle3.copyWith(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),)
                    // ],
                    // New-york time london listed this children
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('New-York',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white, fontSize: 14)),
                      ),
                      Text(
                        '8H 30M',
                        style: Styles.headLineStyle4
                            .copyWith(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text('London',
                            textAlign: TextAlign.end,
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white, fontSize: 14)),
                      )
                    ],
                  )
                ],
              ),
            ),
            /*showing orange part of card ticket*/
            Container(
              // color: Color(0xFFF37867),
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Styles.bgColor,
                          borderRadius: BorderRadius.only(
                            topRight:Radius.circular(10),
                            bottomRight:Radius.circular(10),
                          )
                        ),
                      ),
                  ),
                  // const Spacer(),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints){
                        return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children:
                            List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                              width: 5,height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),

                              ),
                            ))

                        );
                      }
                    ),
                  ),),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Styles.bgColor,
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(10),
                            bottomLeft:Radius.circular(10),
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            // bottom orange part done by -V
            // Container(
            //   decoration: BoxDecoration(
            //     color: Styles.orangeColor,
            //     borderRadius: BorderRadius.only(
            //       bottomRight: Radius.circular(21),
            //       bottomLeft: Radius.circular(21)
            //     ),
            //   ),
            //   padding: const EdgeInsets.all(16),
            //   child: Column(
            //
            //     children: [
            //       Row(
            //         children: [
            //           Text('1 May', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
            //           const Spacer(),
            //           Text('08:00 AM', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
            //           const Spacer(),
            //           Text('23', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
            //         ],
            //       ),
            //     // Gap(5),
            //       Row(
            //         children: [
            //           Text('Date', style: Styles.headLineStyle4
            //               .copyWith(color: Colors.white, fontSize: 14)),
            //           // const Spacer(),
            //           Expanded(child: Container()),
            //           Text('Departure time', style: Styles.headLineStyle4
            //               .copyWith(color: Colors.white, fontSize: 14)),
            //           const Spacer(),
            //           Text('Number',style: Styles.headLineStyle4
            //               .copyWith(color: Colors.white, fontSize: 14)),
            //         ],
            //       )
            //     ],
            //   ),
            // )
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21))),
              padding: EdgeInsets.only(left:16, top :10, right:16, bottom:16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('1 May', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text('Date', style: Styles.headLineStyle4.copyWith(color: Colors.white, fontSize: 14),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('08:00 AM', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Text('Departure time',style: Styles.headLineStyle4.copyWith(color: Colors.white,fontSize: 14))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('23', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Text('November',style: Styles.headLineStyle4.copyWith(color: Colors.white, fontSize: 14))
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
