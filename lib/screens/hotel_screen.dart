import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketapp/utils/app_layout.dart';
import 'package:ticketapp/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  HotelScreen({super.key, required String imageName});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:Colors.white,
      ),
      // ),
      width: size.width * 0.5,
      height: 200,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

//       mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/image1.jpg")))),
          const Spacer(),
          Text("Text sample", style: Styles.headLineStyle2,),
          const Spacer(),
          Text("data",style: Styles.headLineStyle3),
          const Gap(20),
        ],
      ),
    );
  }
}
