import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delevry_app/src/ui/screens/carrito_screen.dart';
import 'package:food_delevry_app/src/ui/widgets/IngredientesContainer.dart';

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
                  height: 460.sp,
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
                        SizedBox(height: 15.sp,),
                        const Text("Descripción",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                        SizedBox(height: 15.sp,),
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
                        SizedBox(height: 15.sp,),
                        const Text("Ingredientes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                        SizedBox(height: 15.sp,),
                        SizedBox(
                          //color: Colors.amber,
                          height: 169.sp,
                          width: 414.sp,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children:  [
                              IngredientesContainer(image: "111.png",title: "Arrachera",),
                              const SizedBox(width: 8,),
                              IngredientesContainer(image: "112.png",title: "Pan ajonjoli",),
                              const SizedBox(width: 8,),
                              IngredientesContainer(image: "113.png",title: "Lechuga",),
                              const SizedBox(width: 8,),
                              IngredientesContainer(image: "114.png",title: "Cebolla",),

                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CarritoScreen()));
                              },
                              child: Container(
                                height: 63.sp,
                                width: 210.sp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: const LinearGradient(
                                              begin: Alignment.topRight,
                                              end: Alignment.bottomLeft,
                                              colors: [
                                                Color(0xFF2EC8C1),
                                                Color(0xFF4A1192),
                                                
                                              ],
                                            )
                                ),
                                child: const Center(child: Text("Order now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),)),
                              ),
                            ),
                            const Text("1220 PKR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Color(0xFF153E73)),),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
                Positioned(
                  top: 315.sp,
                  right: 40.sp,
                  child: const CircleAvatar(
                    backgroundColor: Color(0xFFF1395E),
                    radius: 20,
                    child: Icon(Icons.favorite_outline,size: 25,color: Colors.white,),
                  ),
                )
                 
            ],)
        ),
      ),
    );
  }
}