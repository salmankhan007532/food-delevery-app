import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // height: double.infinity,
          // width: double.infinity,
          
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                          height: 400.sp,
                          width: 414.sp,
                          decoration:  BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(90.sp)),
                ),
                child: const Image(image: AssetImage("assets/images/41.png"),fit: BoxFit.cover,),
                        ),
              ),
             
          Positioned(
                bottom: 0,
                child: Container(
                  height: 440.sp,
                  width: 414.sp,
                  decoration:   BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(90.sp)),
               border: Border.all(width: 3, color: Colors.grey)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 40.sp,top: 20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Descripción",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                        SizedBox(height: 5.sp,),
                        SizedBox(
                          height:58.sp ,
                          width: 323.sp,
                          //color: Colors.green,
                          child: const Wrap(
                            children: [
                              Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore .")
                            ],
                          ),
                        ),
                        SizedBox(height: 5.sp,),
                        const Text("Ingredientes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                        SizedBox(height: 5.sp,),
                        Container(
                          height: 169.sp,
                          width: 414.sp,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
                 
            ],)
        ),
      ),
    );
  }
}