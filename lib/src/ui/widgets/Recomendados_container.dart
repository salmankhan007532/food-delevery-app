import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class RecomendadosContainer extends StatelessWidget {
  var image;
   RecomendadosContainer({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 245.sp,
      height: 104.sp,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 0.5,color: Colors.grey)
      ),
      child: Stack(
        children:[ Row(
          children: [
            SizedBox(
              height: 165.sp,
              width: 102.sp,
              //color: Colors.amber,
              child:  Image(image: AssetImage("assets/images/$image")),
            ),
            SizedBox(width: 8.sp,),
             Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.sp,),
                const Text("Naturales",style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 112, 111, 111)),),
                SizedBox(height: 50.sp,),
                const Text("Malteadas tropicales",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                SizedBox(height: 10.sp,),
                const Text("Elaborado con jugos naturales",style: TextStyle(fontSize: 7,),),
                SizedBox(height: 8.sp,),
                const Text("1200 PkR",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              ],
            ),
          ],
        ),
       Positioned(
        right: 12.sp,
        top: 15.sp,
        child: const Icon(Icons.favorite_outline_sharp)),
        Positioned(
        right: 12.sp,
        bottom: 25.sp,
        child:  Icon(Icons.arrow_forward_ios,size: 20.sp,))
        ]
      ),
    );
  }
}