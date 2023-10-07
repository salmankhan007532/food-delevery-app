
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delevry_app/src/ui/screens/details_screen.dart';

class ExplorarCategoriasContainer extends StatelessWidget {
  var image;
  var title;
  var color;
   ExplorarCategoriasContainer({super.key,this.image, this.title,this.color});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DetailScreen()));
      },
      child: SizedBox(
              height: 72.sp,
              width: 64.sp,
              //color: Colors.amber,
              child: Column(
                children: [
                  Material(
                    elevation: 3,
                    shadowColor: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 64.sp,
                      width: 64.sp,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Image.asset("assets/images/$image",),
                    ),
                  ),
                  SizedBox(height: 2.sp,),
                   Text("$title"),
                ],
              ),
      ),
    );
  }
}