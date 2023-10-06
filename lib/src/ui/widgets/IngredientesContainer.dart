import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientesContainer extends StatelessWidget {
  var image;
  var title;
   IngredientesContainer({super.key,this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 72.sp,
            width: 120.sp,
            //color: Colors.amber,
            child: Column(
              children: [
                Material(
                  elevation: 3,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 125.sp,
                    width: 120.sp,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1,color: Colors.grey),
                    ),
                    child: Image.asset("assets/images/$image",fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 2.sp,),
                 Text("$title"),
              ],
            ),
    );
  }
}