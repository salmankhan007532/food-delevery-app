import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductospopularesContainer extends StatelessWidget {
  var image;
   ProductospopularesContainer({super.key,this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      height: 214.sp ,
      width: 174.sp,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
         border: Border.all(width: 1,color: Colors.grey)

      ),
      child: Stack(children: [
        Positioned(
          top: 12.sp,
          right: 10.sp,
          child: Icon(Icons.favorite_border,size: 24.0.sp,),),
        Positioned(
          top: 0.sp,
          bottom: 10.sp,
          left: 30.sp,
          right: 30.sp,
          child: Container(
            height: 95.sp ,
            width: 95.sp,
            alignment: Alignment.center,
            decoration:  const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                      BoxShadow(
                        
                        color: Color.fromARGB(255, 58, 125, 180),
                        blurRadius: 17.0, // soften the shadow
                        spreadRadius: 3.0, //extend the shadow
                        offset: Offset(
                          3.0, // Move to right 5  horizontally
                          3.0, // Move to bottom 5 Vertically
                        ),
                        blurStyle: BlurStyle.outer
                      )
                    ],
            ),
            child: Image.asset("assets/images/$image"),
          ),
        ),

         Positioned(
          bottom: 8.sp,
          left: 10.sp,
          child:  const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("Pizza Clásica",style: TextStyle(fontSize: 12),),
             Text("Salsa clásica de la casa",style: TextStyle(fontSize: 7,),),
             Text("1200.60 pkr",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
          ],
        ),
        ),
        Positioned(
          bottom: 8.sp,
          right: 10.sp,
          child: Icon(Icons.arrow_forward_ios,size: 20.0.sp,),)
      ]), 
    );
  }
}