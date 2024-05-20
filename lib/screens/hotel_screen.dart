import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketapp/utils/app_layout.dart';
import 'package:ticketapp/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotels;
  HotelScreen({super.key, required this.hotels});

  @override
  Widget build(BuildContext context) {
    // print to check if the values are getting or not
    // print('hotels listhotels${hotels['image']}');
    final size = AppLayout.getSize(context);

    return Container(
//       // this card is made by -V
//       padding: EdgeInsets.only(top: 20, left: 20, right: 20),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color:Colors.white,
//       ),
//       // ),
//       width: size.width * 0.5,
//       height: 200,
//
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//
// //       mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//
//           Container(
//               height: 100,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: AssetImage("assets/images/image1.jpg")))),
//           const Spacer(),
//           Text("Text sample", style: Styles.headLineStyle2,),
//           const Spacer(),
//           Text("data",style: Styles.headLineStyle3),
//           const Gap(20),
//         ],
//       ),

      // original version of card
      width: size.width * 0.6,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Styles.primaryColor,
          boxShadow: [
            BoxShadow(
          // color: Colors.grey.shade200,
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5

      )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${hotels['image']}'))),
          ),
          const Gap(10),
          Text('${hotels['place']}', style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
          const Gap(5),
          Text('${hotels['destination']}', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          const Gap(8),
          Text('\$${hotels['price']}/night',style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),),
        ],
      ),
    );
  }
}
